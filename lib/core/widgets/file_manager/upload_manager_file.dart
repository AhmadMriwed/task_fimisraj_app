
import 'package:file_picker/file_picker.dart';
import 'package:fimisraj/core/widgets/file_manager/upload_manager_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'file_upload_widget.dart';

class UploadManagerFile extends StatelessWidget {
  const UploadManagerFile({super.key, required this.file,});

  final PlatformFile file ;


  @override
  Widget build(BuildContext context) {
    return UploadManagerBase(
      builder:(context, state, infoFile)=>FileUploadWidget(file: infoFile) //Text("${state} ${infoFile.key} ${infoFile.progress}")
    , file: file,
     uploadFile: (file,infoFile) =>null
    );
  }
}
