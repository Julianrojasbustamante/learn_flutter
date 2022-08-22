import 'package:fl_commponents/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'Julian',
      'last_name' : 'Rojas',
      'email' : 'julianrjs@gmail.com',
      'password' : '***********',
      'role' : 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  type: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem(value: 'Super user', child: Text('Super user')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],
                  onChanged: (value){
                    formValues['rol'] = value ?? 'Admin';
                  }
                ),
                ElevatedButton(
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()){
                      print('Formulario invalido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
