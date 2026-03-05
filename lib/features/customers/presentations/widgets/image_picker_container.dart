import 'dart:io';
import 'package:fintech_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class ImagePickerContainer extends StatefulWidget {
  const ImagePickerContainer({super.key});

  @override
  State<ImagePickerContainer> createState() => _ImagePickerContainerState();
}

class _ImagePickerContainerState extends State<ImagePickerContainer> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  //TODO: no funciona corregir
  Future<void> _pickImage() async {
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.gallery, // o ImageSource.camera
    );
    if (picked != null) {
      setState(() => _image = File(picked.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        width: double.maxFinite,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[100],
          //TODO: agregar el style focus
        ),
        clipBehavior: Clip.antiAlias,
        child: _image != null
            ? Image.file(_image!, fit: BoxFit.cover)
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //TODO: mirar si se crea un custom de este widget
                  IconButton.filled(
                    onPressed: _pickImage,
                    icon: Icon(Icons.add),
                    style: IconButton.styleFrom(
                      minimumSize: Size(44, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.onPrimary,
                    ),
                  ),
                  SizedBox(height: 8),
                  //TODO: mirar si se crea un custom de este widget
                  Text(
                    'Subir imagen',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.gray800,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
