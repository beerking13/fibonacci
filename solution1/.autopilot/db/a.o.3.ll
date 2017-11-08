; ModuleID = 'C:/Users/takuya/fibonacci/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@fibonacci_str = internal unnamed_addr constant [10 x i8] c"fibonacci\00" ; [#uses=1 type=[10 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @fibonacci(i32 %f0, i32 %f1, i32 %f2) nounwind readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %f0) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %f1) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %f2) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @fibonacci_str) nounwind
  %f2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %f2) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %f2_read}, i64 0, metadata !33), !dbg !41 ; [debug line = 5:35] [debug variable = f2]
  %f1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %f1) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %f1_read}, i64 0, metadata !42), !dbg !43 ; [debug line = 5:27] [debug variable = f1]
  %f0_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %f0) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %f0_read}, i64 0, metadata !44), !dbg !45 ; [debug line = 5:19] [debug variable = f0]
  call void @llvm.dbg.value(metadata !{i32 %f0}, i64 0, metadata !44), !dbg !45 ; [debug line = 5:19] [debug variable = f0]
  call void @llvm.dbg.value(metadata !{i32 %f1}, i64 0, metadata !42), !dbg !43 ; [debug line = 5:27] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i32 %f2}, i64 0, metadata !33), !dbg !41 ; [debug line = 5:35] [debug variable = f2]
  br label %1, !dbg !46                           ; [debug line = 7:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=2 type=i4]
  %p_s = phi i32 [ %f2_read, %0 ], [ %f2_assign, %2 ] ; [#uses=1 type=i32]
  %f0_assign = phi i32 [ %f1_read, %0 ], [ %f2_assign, %2 ] ; [#uses=2 type=i32]
  %p_0 = phi i32 [ %f0_read, %0 ], [ %f0_assign, %2 ] ; [#uses=1 type=i32]
  %exitcond = icmp eq i4 %i, -6, !dbg !46         ; [#uses=1 type=i1] [debug line = 7:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  %i_1 = add i4 %i, 1, !dbg !49                   ; [#uses=1 type=i4] [debug line = 7:17]
  br i1 %exitcond, label %3, label %2, !dbg !46   ; [debug line = 7:6]

; <label>:2                                       ; preds = %1
  %f2_assign = add nsw i32 %p_0, %f0_assign, !dbg !50 ; [#uses=2 type=i32] [debug line = 8:3]
  call void @llvm.dbg.value(metadata !{i32 %f2_assign}, i64 0, metadata !33), !dbg !50 ; [debug line = 8:3] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{i32 %f0_assign}, i64 0, metadata !44), !dbg !52 ; [debug line = 9:3] [debug variable = f0]
  call void @llvm.dbg.value(metadata !{i32 %f2_assign}, i64 0, metadata !42), !dbg !53 ; [debug line = 10:3] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !54), !dbg !49 ; [debug line = 7:17] [debug variable = i]
  br label %1, !dbg !49                           ; [debug line = 7:17]

; <label>:3                                       ; preds = %1
  ret i32 %p_s, !dbg !55                          ; [debug line = 12:2]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 (i32, i32, i32)* @fibonacci, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"f0", metadata !"f1", metadata !"f2"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"f0", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"f1", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"f2", metadata !17, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"return", metadata !31, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 1, i32 0}
!33 = metadata !{i32 786689, metadata !34, metadata !"f2", metadata !35, i32 50331653, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786478, i32 0, metadata !35, metadata !"fibonacci", metadata !"fibonacci", metadata !"", metadata !35, i32 5, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @fibonacci, null, null, metadata !39, i32 5} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786473, metadata !"SkyDrive/fib.c", metadata !"C:\5CUsers\5Ctakuya", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{metadata !38, metadata !38, metadata !38, metadata !38}
!38 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 5, i32 35, metadata !34, null}
!42 = metadata !{i32 786689, metadata !34, metadata !"f1", metadata !35, i32 33554437, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 5, i32 27, metadata !34, null}
!44 = metadata !{i32 786689, metadata !34, metadata !"f0", metadata !35, i32 16777221, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 5, i32 19, metadata !34, null}
!46 = metadata !{i32 7, i32 6, metadata !47, null}
!47 = metadata !{i32 786443, metadata !48, i32 7, i32 2, metadata !35, i32 1} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !34, i32 5, i32 38, metadata !35, i32 0} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 7, i32 17, metadata !47, null}
!50 = metadata !{i32 8, i32 3, metadata !51, null}
!51 = metadata !{i32 786443, metadata !47, i32 7, i32 21, metadata !35, i32 2} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 9, i32 3, metadata !51, null}
!53 = metadata !{i32 10, i32 3, metadata !51, null}
!54 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !35, i32 6, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 12, i32 2, metadata !48, null}
