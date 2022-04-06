import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Cristian',
      'last_name': 'Juarez',
      'email': 'juarez@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de entradas'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  formProprety: 'first_name',
                  formValues: formValues,
                  customHinText: 'Introduce tu nombre',
                  customLabel: 'Nombre',
                ),
                CustomInputField(
                  formProprety: 'last_name',
                  formValues: formValues,
                  customHinText: 'Introduce tu apellido',
                  customLabel: 'Apellidos',
                ),
                CustomInputField(
                  formProprety: 'email',
                  formValues: formValues,
                  customHinText: 'Introduse tu correo',
                  customLabel: 'Email',
                  customKeyboarType: TextInputType.emailAddress,
                ),
                CustomInputField(
                  formProprety: 'password',
                  formValues: formValues,
                  customHinText: 'Introduce tu contraseña',
                  customLabel: 'Contraseña',
                  customObscureText: true,
                ),

                //
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                    DropdownMenuItem(
                        child: Text('Super User'), value: 'Super User'),
                    DropdownMenuItem(
                        child: Text('Developer'), value: 'Developer'),
                    DropdownMenuItem(
                        child: Text('J-Developer'), value: 'J-Developer'),
                  ],
                  onChanged: (vaule) =>
                      formValues['role'] = vaule ?? 'Seleccione',
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(
                        FocusNode(),
                      );
                      if (!myFormKey.currentState!.validate()) {
                        //print('Formulario incompleto');
                        return;
                      }

                      // *Imprimir los valores del formulario
                      //print(formValues);
                    },
                    child: const Text('Guardar'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
