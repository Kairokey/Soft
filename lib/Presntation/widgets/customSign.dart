import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CustomSign extends StatefulWidget {
  CustomSign({Key? key,this.name,this.hint,this.secure,this.sufix,this.icons,this.controller,this.onChanging,this.onSaved,this.validator}) : super(key: key);
  String? name;
  String? hint;
  bool? secure;
  bool? sufix;
  var onSaved;
  var onChanging;
  var validator;

  TextEditingController? controller;
  IconData? icons;

  @override
  State<CustomSign> createState() => _CustomSignState();
}

class _CustomSignState extends State<CustomSign> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.name!,
                  style: TextStyle(
                      fontSize: 15.sp,
                    color: Colors.black,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,



                  ),),
              )),
          TextFormField(
            controller: widget.controller,
            obscureText: widget.secure!,
            validator: widget.validator!,
            onSaved:widget.onSaved ,
            onChanged:widget.onChanging ,
            decoration: InputDecoration(

              prefixIcon: Icon(widget.icons!),
              hintText: widget.hint!,
              suffixIcon:widget.sufix!?InkWell(
                  onTap: (){
                    setState(() {
                      widget.secure=!widget.secure!;
                    });
                  },
                  child: Icon(Icons.remove_red_eye_outlined))
                  :null
              ,
            ),

          ),
        ],

      ),
    );
  }
}
