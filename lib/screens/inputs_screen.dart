import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value){
                  print(value);
                },
                validator: (value){
                  if(value == null) return 'Campo requerido';
                  return value.length < 3 ? 'Minimo 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  label: Text('Nombre'),
                  helperText: 'Solo letras',
                  counterText: '3 caracteres',
                  suffixIcon: Icon(Icons.group_outlined),
                  // prefixIcon: Icon(Icons.group_outlined),
                  // icon: Icon(Icons.assignment_ind_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
