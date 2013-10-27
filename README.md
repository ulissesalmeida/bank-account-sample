bank-account-sample
===================

A sample of using automated tests with ruby and test unit


To run the ContaBancaria tests:

```shell
ruby -I . conta_bancaria_test.rb
```

To run the Transferencia tests:

```shell
ruby -I . transferencia_test.rb
```

Exercises
=========

1. When transfering a money, if some error occurs, store the error in array of errors.
   Tips:
     The array of errors must be a attribtue of the Transferencia class.
  
2. If someone try to deposit or draw negative money, raise a specific error message.

3. Now a account can be blocked, if an account is blocked no changes can happen on 'saldo'.
   Tips:
     The blocked flag must be attribute of account.
     Raise a error when someone try to change the 'saldo'

4. When error happens on Transferencia indentify which account has the error
   Tips:
      Example: 'Conta de origem: esta bloqueada'
  
