import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import '../utils/constants.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = '0';
  String _operand = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operation = '';

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _output = '0';
        _num1 = 0;
        _num2 = 0;
        _operand = '';
        _operation = '';
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '×' ||
          buttonText == '÷') {
        _num1 = double.parse(_output);
        _operation = buttonText;
        _operand = '';
      } else if (buttonText == '=') {
        _num2 = double.parse(_output);

        if (_operation == '+') {
          _output = (_num1 + _num2).toString();
        } else if (_operation == '-') {
          _output = (_num1 - _num2).toString();
        } else if (_operation == '×') {
          _output = (_num1 * _num2).toString();
        } else if (_operation == '÷') {
          if (_num2 != 0) {
            _output = (_num1 / _num2).toString();
          } else {
            _output = 'Error';
          }
        }

        _num1 = 0;
        _num2 = 0;
        _operand = '';
        _operation = '';
      } else if (buttonText == 'x²') {
        double num = double.parse(_output);
        _output = (num * num).toString();
      } else if (buttonText == '√') {
        double num = double.parse(_output);
        if (num >= 0) {
          _output = sqrt(num).toString();
        } else {
          _output = 'Error';
        }
      } else if (buttonText == '⌫') {
        if (_operand.isNotEmpty) {
          _operand = _operand.substring(0, _operand.length - 1);
          _output = _operand.isEmpty ? '0' : _operand;
        }
      } else {
        if (_operand == '0') {
          _operand = buttonText;
        } else {
          _operand = _operand + buttonText;
        }
        _output = _operand;
      }

      // Format output
      if (_output != 'Error' && _output.contains('.')) {
        double temp = double.parse(_output);
        if (temp == temp.roundToDouble()) {
          _output = temp.toInt().toString();
        } else {
          _output = temp.toStringAsFixed(2);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppConstants.paddingLarge),
              decoration: const BoxDecoration(
                gradient: AppConstants.primaryGradient,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Kalkulator',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Kalkulator Sederhana',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),

            // Display
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(24),
                alignment: Alignment.bottomRight,
                child: Text(
                  _output,
                  style: GoogleFonts.poppins(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: AppConstants.textPrimaryColor,
                  ),
                  textAlign: TextAlign.right,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),

            // Buttons
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _buildButtonRow(['C', '⌫', '√', '÷']),
                    _buildButtonRow(['7', '8', '9', '×']),
                    _buildButtonRow(['4', '5', '6', '-']),
                    _buildButtonRow(['1', '2', '3', '+']),
                    _buildButtonRow(['x²', '0', '.', '=']),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRow(List<String> buttons) {
    return Expanded(
      child: Row(
        children: buttons.map((button) => _buildButton(button)).toList(),
      ),
    );
  }

  Widget _buildButton(String buttonText) {
    Color buttonColor = Colors.white;
    Color textColor = AppConstants.textPrimaryColor;

    if (buttonText == 'C' || buttonText == '⌫') {
      buttonColor = AppConstants.accentColor;
      textColor = Colors.white;
    } else if (buttonText == '÷' ||
        buttonText == '×' ||
        buttonText == '-' ||
        buttonText == '+' ||
        buttonText == '=') {
      buttonColor = AppConstants.primaryColor;
      textColor = Colors.white;
    } else if (buttonText == '√' || buttonText == 'x²') {
      buttonColor = AppConstants.secondaryColor;
      textColor = Colors.white;
    }

    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6),
        child: Material(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16),
          elevation: 4,
          shadowColor: buttonColor.withOpacity(0.4),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () => _buttonPressed(buttonText),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                buttonText,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
