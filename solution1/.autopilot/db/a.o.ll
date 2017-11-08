; ModuleID = 'C:/Users/takuya/fibonacci/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@.str = private unnamed_addr constant [13 x i8] c"FIB %d : %d\0A\00", align 1 ; [#uses=1 type=[13 x i8]*]

; [#uses=1]
define i32 @fibonacci(i32 %f0, i32 %f1, i32 %f2) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=4 type=i32*]
  store i32 %f0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !32), !dbg !33 ; [debug line = 5:19] [debug variable = f0]
  store i32 %f1, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !34), !dbg !35 ; [debug line = 5:27] [debug variable = f1]
  store i32 %f2, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !36), !dbg !37 ; [debug line = 5:35] [debug variable = f2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !38), !dbg !40 ; [debug line = 6:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !41         ; [debug line = 7:6]
  br label %4, !dbg !41                           ; [debug line = 7:6]

; <label>:4                                       ; preds = %13, %0
  %5 = load i32* %i, align 4, !dbg !41            ; [#uses=1 type=i32] [debug line = 7:6]
  %6 = icmp slt i32 %5, 10, !dbg !41              ; [#uses=1 type=i1] [debug line = 7:6]
  br i1 %6, label %7, label %16, !dbg !41         ; [debug line = 7:6]

; <label>:7                                       ; preds = %4
  %8 = load i32* %2, align 4, !dbg !43            ; [#uses=1 type=i32] [debug line = 8:3]
  %9 = load i32* %1, align 4, !dbg !43            ; [#uses=1 type=i32] [debug line = 8:3]
  %10 = add nsw i32 %8, %9, !dbg !43              ; [#uses=1 type=i32] [debug line = 8:3]
  store i32 %10, i32* %3, align 4, !dbg !43       ; [debug line = 8:3]
  %11 = load i32* %2, align 4, !dbg !45           ; [#uses=1 type=i32] [debug line = 9:3]
  store i32 %11, i32* %1, align 4, !dbg !45       ; [debug line = 9:3]
  %12 = load i32* %3, align 4, !dbg !46           ; [#uses=1 type=i32] [debug line = 10:3]
  store i32 %12, i32* %2, align 4, !dbg !46       ; [debug line = 10:3]
  br label %13, !dbg !47                          ; [debug line = 11:2]

; <label>:13                                      ; preds = %7
  %14 = load i32* %i, align 4, !dbg !48           ; [#uses=1 type=i32] [debug line = 7:17]
  %15 = add nsw i32 %14, 1, !dbg !48              ; [#uses=1 type=i32] [debug line = 7:17]
  store i32 %15, i32* %i, align 4, !dbg !48       ; [debug line = 7:17]
  br label %4, !dbg !48                           ; [debug line = 7:17]

; <label>:16                                      ; preds = %4
  %17 = load i32* %3, align 4, !dbg !49           ; [#uses=1 type=i32] [debug line = 12:2]
  ret i32 %17, !dbg !49                           ; [debug line = 12:2]
}

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define i32 @main() nounwind {
  %1 = alloca i32, align 4                        ; [#uses=1 type=i32*]
  %f0 = alloca i32, align 4                       ; [#uses=2 type=i32*]
  %f1 = alloca i32, align 4                       ; [#uses=2 type=i32*]
  %f2 = alloca i32, align 4                       ; [#uses=2 type=i32*]
  %result = alloca i32, align 4                   ; [#uses=2 type=i32*]
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata !{i32* %f0}, metadata !50), !dbg !52 ; [debug line = 8:6] [debug variable = f0]
  store i32 1, i32* %f0, align 4, !dbg !53        ; [debug line = 8:12]
  call void @llvm.dbg.declare(metadata !{i32* %f1}, metadata !54), !dbg !55 ; [debug line = 9:6] [debug variable = f1]
  store i32 1, i32* %f1, align 4, !dbg !56        ; [debug line = 9:12]
  call void @llvm.dbg.declare(metadata !{i32* %f2}, metadata !57), !dbg !58 ; [debug line = 10:6] [debug variable = f2]
  store i32 0, i32* %f2, align 4, !dbg !59        ; [debug line = 10:12]
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !60), !dbg !61 ; [debug line = 12:6] [debug variable = result]
  %2 = load i32* %f0, align 4, !dbg !62           ; [#uses=1 type=i32] [debug line = 12:15]
  %3 = load i32* %f1, align 4, !dbg !62           ; [#uses=1 type=i32] [debug line = 12:15]
  %4 = load i32* %f2, align 4, !dbg !62           ; [#uses=1 type=i32] [debug line = 12:15]
  %5 = call i32 @fibonacci(i32 %2, i32 %3, i32 %4), !dbg !62 ; [#uses=1 type=i32] [debug line = 12:15]
  store i32 %5, i32* %result, align 4, !dbg !62   ; [debug line = 12:15]
  %6 = load i32* %result, align 4, !dbg !63       ; [#uses=1 type=i32] [debug line = 14:2]
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i32 10, i32 %6), !dbg !63 ; [#uses=0 type=i32] [debug line = 14:2]
  ret i32 0, !dbg !64                             ; [debug line = 15:2]
}

; [#uses=1]
declare i32 @printf(i8*, ...)

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
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"main", metadata !"main", metadata !"", metadata !16, i32 6, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !10, i32 6} ; [ DW_TAG_subprogram ]
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
!26 = metadata !{i32 ()* @main, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !25}
!27 = metadata !{metadata !"kernel_arg_addr_space"}
!28 = metadata !{metadata !"kernel_arg_access_qual"}
!29 = metadata !{metadata !"kernel_arg_type"}
!30 = metadata !{metadata !"kernel_arg_type_qual"}
!31 = metadata !{metadata !"kernel_arg_name"}
!32 = metadata !{i32 786689, metadata !5, metadata !"f0", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 5, i32 19, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"f1", metadata !6, i32 33554437, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 5, i32 27, metadata !5, null}
!36 = metadata !{i32 786689, metadata !5, metadata !"f2", metadata !6, i32 50331653, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 5, i32 35, metadata !5, null}
!38 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !6, i32 6, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 786443, metadata !5, i32 5, i32 38, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 6, i32 6, metadata !39, null}
!41 = metadata !{i32 7, i32 6, metadata !42, null}
!42 = metadata !{i32 786443, metadata !39, i32 7, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 8, i32 3, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 7, i32 21, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 9, i32 3, metadata !44, null}
!46 = metadata !{i32 10, i32 3, metadata !44, null}
!47 = metadata !{i32 11, i32 2, metadata !44, null}
!48 = metadata !{i32 7, i32 17, metadata !42, null}
!49 = metadata !{i32 12, i32 2, metadata !39, null}
!50 = metadata !{i32 786688, metadata !51, metadata !"f0", metadata !16, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786443, metadata !15, i32 6, i32 11, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 8, i32 6, metadata !51, null}
!53 = metadata !{i32 8, i32 12, metadata !51, null}
!54 = metadata !{i32 786688, metadata !51, metadata !"f1", metadata !16, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 9, i32 6, metadata !51, null}
!56 = metadata !{i32 9, i32 12, metadata !51, null}
!57 = metadata !{i32 786688, metadata !51, metadata !"f2", metadata !16, i32 10, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 10, i32 6, metadata !51, null}
!59 = metadata !{i32 10, i32 12, metadata !51, null}
!60 = metadata !{i32 786688, metadata !51, metadata !"result", metadata !16, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 12, i32 6, metadata !51, null}
!62 = metadata !{i32 12, i32 15, metadata !51, null}
!63 = metadata !{i32 14, i32 2, metadata !51, null}
!64 = metadata !{i32 15, i32 2, metadata !51, null}
