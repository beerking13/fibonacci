; ModuleID = 'C:/Users/takuya/fibonacci/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@fibonacci.str = internal unnamed_addr constant [10 x i8] c"fibonacci\00" ; [#uses=1 type=[10 x i8]*]

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @fibonacci(i32 %f0, i32 %f1, i32 %f2) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @fibonacci.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %f0}, i64 0, metadata !38), !dbg !39 ; [debug line = 5:19] [debug variable = f0]
  call void @llvm.dbg.value(metadata !{i32 %f1}, i64 0, metadata !40), !dbg !41 ; [debug line = 5:27] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i32 %f2}, i64 0, metadata !42), !dbg !43 ; [debug line = 5:35] [debug variable = f2]
  br label %1, !dbg !44                           ; [debug line = 7:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=2 type=i32]
  %. = phi i32 [ %f2, %0 ], [ %f2.assign, %2 ]    ; [#uses=1 type=i32]
  %f0.assign = phi i32 [ %f1, %0 ], [ %f2.assign, %2 ] ; [#uses=2 type=i32]
  %.0 = phi i32 [ %f0, %0 ], [ %f0.assign, %2 ]   ; [#uses=1 type=i32]
  %exitcond = icmp eq i32 %i, 10, !dbg !44        ; [#uses=1 type=i1] [debug line = 7:6]
  br i1 %exitcond, label %3, label %2, !dbg !44   ; [debug line = 7:6]

; <label>:2                                       ; preds = %1
  %f2.assign = add nsw i32 %.0, %f0.assign, !dbg !47 ; [#uses=2 type=i32] [debug line = 8:3]
  call void @llvm.dbg.value(metadata !{i32 %f2.assign}, i64 0, metadata !42), !dbg !47 ; [debug line = 8:3] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{i32 %f0.assign}, i64 0, metadata !38), !dbg !49 ; [debug line = 9:3] [debug variable = f0]
  call void @llvm.dbg.value(metadata !{i32 %f2.assign}, i64 0, metadata !40), !dbg !50 ; [debug line = 10:3] [debug variable = f1]
  %i.1 = add nsw i32 %i, 1, !dbg !51              ; [#uses=1 type=i32] [debug line = 7:17]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !52), !dbg !51 ; [debug line = 7:17] [debug variable = i]
  br label %1, !dbg !51                           ; [debug line = 7:17]

; <label>:3                                       ; preds = %1
  %.02.lcssa = phi i32 [ %., %1 ]                 ; [#uses=1 type=i32]
  ret i32 %.02.lcssa, !dbg !53                    ; [debug line = 12:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0, !12}
!opencl.kernels = !{!19, !26}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/takuya/fibonacci/solution1/.autopilot/db/fib.pragma.2.c", metadata !"C:\5CUsers\5Ctakuya", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fibonacci", metadata !"fibonacci", metadata !"", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @fibonacci, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"SkyDrive/fib.c", metadata !"C:\5CUsers\5Ctakuya", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/takuya/fibonacci/solution1/.autopilot/db/main.pragma.2.c", metadata !"C:\5CUsers\5Ctakuya", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !13, metadata !1} ; [ DW_TAG_compile_unit ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"main", metadata !"main", metadata !"", metadata !16, i32 6, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !10, i32 6} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"SkyDrive/main.c", metadata !"C:\5CUsers\5Ctakuya", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{metadata !9}
!19 = metadata !{i32 (i32, i32, i32)* @fibonacci, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"f0", metadata !"f1", metadata !"f2"}
!25 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !25}
!27 = metadata !{metadata !"kernel_arg_addr_space"}
!28 = metadata !{metadata !"kernel_arg_access_qual"}
!29 = metadata !{metadata !"kernel_arg_type"}
!30 = metadata !{metadata !"kernel_arg_type_qual"}
!31 = metadata !{metadata !"kernel_arg_name"}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"return", metadata !36, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 1, i32 0}
!38 = metadata !{i32 786689, metadata !5, metadata !"f0", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 5, i32 19, metadata !5, null}
!40 = metadata !{i32 786689, metadata !5, metadata !"f1", metadata !6, i32 33554437, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 5, i32 27, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"f2", metadata !6, i32 50331653, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 5, i32 35, metadata !5, null}
!44 = metadata !{i32 7, i32 6, metadata !45, null}
!45 = metadata !{i32 786443, metadata !46, i32 7, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !5, i32 5, i32 38, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 8, i32 3, metadata !48, null}
!48 = metadata !{i32 786443, metadata !45, i32 7, i32 21, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 9, i32 3, metadata !48, null}
!50 = metadata !{i32 10, i32 3, metadata !48, null}
!51 = metadata !{i32 7, i32 17, metadata !45, null}
!52 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !6, i32 6, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 12, i32 2, metadata !46, null}
