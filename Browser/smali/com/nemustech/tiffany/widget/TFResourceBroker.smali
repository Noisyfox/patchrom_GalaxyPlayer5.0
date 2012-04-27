.class public final Lcom/nemustech/tiffany/widget/TFResourceBroker;
.super Ljava/lang/Object;
.source "TFResourceBroker.java"


# static fields
.field private static initialized:Z

.field private static mInstance:Lcom/nemustech/tiffany/widget/TFResourceBroker;

.field private static mModuleLoadFlag:I

.field private static mModuleNeedFlag:I

.field private static mRId_com_android_internal_R_attr_absListViewStyle:I

.field private static mRId_com_android_internal_R_attr_galleryStyle:I

.field private static mRId_com_android_internal_R_attr_gridViewStyle:I

.field private static mRId_com_android_internal_R_attr_listViewStyle:I

.field private static mRId_com_android_internal_R_attr_scrollViewStyle:I

.field private static mRId_com_android_internal_R_drawable_list_selector_background:I

.field private static mRId_com_android_internal_R_drawable_overscroll_edge:I

.field private static mRId_com_android_internal_R_drawable_overscroll_glow:I

.field private static mRId_com_android_internal_R_layout_list_content:I

.field private static mRId_com_android_internal_R_layout_simple_list_item_1:I

.field private static mRId_com_android_internal_R_layout_simple_spinner_dropdown_item:I

.field private static mRId_com_android_internal_R_layout_simple_spinner_item:I

.field private static mRId_com_android_internal_R_layout_typing_filter:I

.field private static mRId_com_android_internal_R_style_Animation_TypingFilter:I

.field private static mRId_com_android_internal_R_style_Animation_TypingFilterRestore:I

.field private static mRId_com_android_internal_R_styleable_AbsListView:[I

.field private static mRId_com_android_internal_R_styleable_AbsListView_drawSelectorOnTop:I

.field private static mRId_com_android_internal_R_styleable_AbsListView_listSelector:I

.field private static mRId_com_android_internal_R_styleable_AbsSpinner:[I

.field private static mRId_com_android_internal_R_styleable_AbsSpinner_entries:I

.field private static mRId_com_android_internal_R_styleable_Gallery:[I

.field private static mRId_com_android_internal_R_styleable_Gallery_animationDuration:I

.field private static mRId_com_android_internal_R_styleable_Gallery_gravity:I

.field private static mRId_com_android_internal_R_styleable_Gallery_spacing:I

.field private static mRId_com_android_internal_R_styleable_Gallery_unselectedAlpha:I

.field private static mRId_com_android_internal_R_styleable_GridView:[I

.field private static mRId_com_android_internal_R_styleable_GridView_columnWidth:I

.field private static mRId_com_android_internal_R_styleable_GridView_gravity:I

.field private static mRId_com_android_internal_R_styleable_GridView_horizontalSpacing:I

.field private static mRId_com_android_internal_R_styleable_GridView_numColumns:I

.field private static mRId_com_android_internal_R_styleable_GridView_stretchMode:I

.field private static mRId_com_android_internal_R_styleable_GridView_verticalSpacing:I

.field private static mRId_com_android_internal_R_styleable_ListView:[I

.field private static mRId_com_android_internal_R_styleable_ListView_divider:I

.field private static mRId_com_android_internal_R_styleable_ListView_dividerHeight:I

.field private static mRId_com_android_internal_R_styleable_ListView_entries:I

.field private static mRId_com_android_internal_R_styleable_ListView_footerDividersEnabled:I

.field private static mRId_com_android_internal_R_styleable_ListView_headerDividersEnabled:I

.field private static mRId_com_android_internal_R_styleable_ScrollView:[I

.field private static mRId_com_android_internal_R_styleable_ScrollView_fillViewport:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    sput-boolean v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->initialized:Z

    .line 52
    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    .line 54
    const/4 v0, 0x6

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleNeedFlag:I

    .line 483
    const v0, 0x101006a

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_absListViewStyle:I

    .line 484
    const v0, 0x1010070

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_galleryStyle:I

    .line 485
    const v0, 0x1010071

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_gridViewStyle:I

    .line 486
    const v0, 0x1010074

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_listViewStyle:I

    .line 487
    const v0, 0x1010080

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_scrollViewStyle:I

    .line 488
    const v0, 0x1080062

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_list_selector_background:I

    .line 489
    const v0, 0x109003b

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_list_content:I

    .line 490
    const v0, 0x1090003

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_list_item_1:I

    .line 491
    const v0, 0x1090009

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_dropdown_item:I

    .line 492
    const v0, 0x1090008

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_item:I

    .line 493
    const v0, 0x1090069

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_typing_filter:I

    .line 494
    const v0, 0x1030071

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilter:I

    .line 495
    const v0, 0x1030072

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilterRestore:I

    .line 496
    sget-object v0, Lcom/android/internal/R$styleable;->AbsListView:[I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView:[I

    .line 497
    sput v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_drawSelectorOnTop:I

    .line 498
    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_listSelector:I

    .line 499
    sget-object v0, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner:[I

    .line 500
    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner_entries:I

    .line 501
    sget-object v0, Lcom/android/internal/R$styleable;->Gallery:[I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery:[I

    .line 502
    sput v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_animationDuration:I

    .line 503
    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_gravity:I

    .line 504
    sput v3, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_spacing:I

    .line 505
    sput v4, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_unselectedAlpha:I

    .line 506
    sget-object v0, Lcom/android/internal/R$styleable;->GridView:[I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView:[I

    .line 507
    sput v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_horizontalSpacing:I

    .line 508
    sput v3, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_verticalSpacing:I

    .line 509
    sput v4, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_stretchMode:I

    .line 510
    sput v5, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_columnWidth:I

    .line 511
    const/4 v0, 0x5

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_numColumns:I

    .line 512
    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_gravity:I

    .line 513
    sget-object v0, Lcom/android/internal/R$styleable;->ListView:[I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView:[I

    .line 514
    sput v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_divider:I

    .line 515
    sput v3, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_dividerHeight:I

    .line 516
    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_entries:I

    .line 517
    const/4 v0, 0x5

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_footerDividersEnabled:I

    .line 518
    sput v5, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_headerDividersEnabled:I

    .line 519
    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView:[I

    .line 520
    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView_fillViewport:I

    .line 521
    const v0, 0x1080238

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_edge:I

    .line 522
    const v0, 0x1080239

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_glow:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method private static checkModule(I)V
    .locals 6
    .parameter "orid"

    .prologue
    const-string v5, "checkModule() : "

    const-string v4, "TFResourceBroker"

    .line 260
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModule()  id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sparse-switch p0, :sswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 267
    :sswitch_0
    :try_start_0
    const-string v1, "TFResourceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkModule() ATTR id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleNeedFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 270
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->initAttr()V

    .line 271
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 340
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModule() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :sswitch_1
    :try_start_1
    const-string v1, "TFResourceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkModule() DRAWABLE id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleNeedFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 280
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->initDrawable()V

    .line 281
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 341
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 342
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModule() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 289
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_2
    :try_start_2
    const-string v1, "TFResourceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkModule() LAYOUT id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleNeedFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 292
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->initLayout()V

    .line 293
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 344
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 345
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModule() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :sswitch_3
    :try_start_3
    const-string v1, "TFResourceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkModule() STYLE id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleNeedFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 301
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->initStyle()V

    .line 302
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    or-int/lit8 v1, v1, 0x8

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 347
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 348
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModule() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 329
    .end local v0           #e:Ljava/lang/NullPointerException;
    :sswitch_4
    :try_start_4
    const-string v1, "TFResourceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkModule() STYLEABLE id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleNeedFlag:I

    and-int/lit8 v1, v1, 0x10

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleNeedFlag:I

    if-eqz v1, :cond_0

    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    and-int/lit8 v1, v1, 0x10

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    if-nez v1, :cond_0

    .line 332
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->initStyleable()V

    .line 333
    sget v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I

    or-int/lit8 v1, v1, 0x10

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mModuleLoadFlag:I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 350
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 351
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModule() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 353
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModule() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 262
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_4
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x12 -> :sswitch_4
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1a -> :sswitch_4
        0x1b -> :sswitch_4
        0x1c -> :sswitch_4
        0x1d -> :sswitch_4
        0x1e -> :sswitch_4
        0x1f -> :sswitch_4
        0x20 -> :sswitch_1
        0x21 -> :sswitch_1
        0x100 -> :sswitch_4
        0x101 -> :sswitch_4
        0x102 -> :sswitch_4
        0x104 -> :sswitch_4
        0x105 -> :sswitch_4
    .end sparse-switch
.end method

.method static getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mInstance:Lcom/nemustech/tiffany/widget/TFResourceBroker;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;

    invoke-direct {v0}, Lcom/nemustech/tiffany/widget/TFResourceBroker;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mInstance:Lcom/nemustech/tiffany/widget/TFResourceBroker;

    .line 126
    :cond_0
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mInstance:Lcom/nemustech/tiffany/widget/TFResourceBroker;

    return-object v0
.end method

.method public static initAttr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "TFResourceBroker"

    .line 163
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initAttr(): called: BEFORE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v1, "com.android.internal.R$attr"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 168
    const-string v1, "absListViewStyle"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_absListViewStyle:I

    .line 169
    const-string v1, "galleryStyle"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_galleryStyle:I

    .line 170
    const-string v1, "gridViewStyle"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_gridViewStyle:I

    .line 171
    const-string v1, "listViewStyle"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_listViewStyle:I

    .line 172
    const-string v1, "scrollViewStyle"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_scrollViewStyle:I

    .line 175
    :cond_0
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AFTER : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public static initDrawable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "TFResourceBroker"

    .line 180
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initDrawable(): called: BEFORE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "com.android.internal.R$drawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 184
    const-string v1, "list_selector_background"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_list_selector_background:I

    .line 185
    const-string v1, "overscroll_edge"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_edge:I

    .line 186
    const-string v1, "overscroll_glow"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_glow:I

    .line 189
    :cond_0
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AFTER : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public static initLayout()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "TFResourceBroker"

    .line 195
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initLayout(): called: BEFORE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v1, "com.android.internal.R$layout"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 199
    const-string v1, "list_content"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_list_content:I

    .line 200
    const-string v1, "simple_list_item_1"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_list_item_1:I

    .line 201
    const-string v1, "simple_spinner_dropdown_item"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_dropdown_item:I

    .line 202
    const-string v1, "simple_spinner_item"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_item:I

    .line 203
    const-string v1, "typing_filter"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_typing_filter:I

    .line 206
    :cond_0
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AFTER : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public static initStyle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "TFResourceBroker"

    .line 211
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initStyle(): called: BEFORE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v1, "com.android.internal.R$style"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 214
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 215
    const-string v1, "Animation_TypingFilter"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilter:I

    .line 216
    const-string v1, "Animation_TypingFilterRestore"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilterRestore:I

    .line 219
    :cond_0
    const-string v1, "TFResourceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AFTER : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public static initStyleable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v4, "TFResourceBroker"

    const-class v3, [I

    .line 224
    const-string v0, "TFResourceBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " initStyleable(): called: BEFORE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "com.android.internal.R$styleable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    const-class v0, [I

    const-string v0, "AbsListView"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView:[I

    .line 229
    const-string v0, "AbsListView_drawSelectorOnTop"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_drawSelectorOnTop:I

    .line 230
    const-string v0, "AbsListView_listSelector"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_listSelector:I

    .line 231
    const-class v0, [I

    const-string v0, "AbsSpinner"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner:[I

    .line 232
    const-string v0, "AbsSpinner_entries"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner_entries:I

    .line 233
    const-class v0, [I

    const-string v0, "Gallery"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery:[I

    .line 234
    const-string v0, "Gallery_animationDuration"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_animationDuration:I

    .line 235
    const-string v0, "Gallery_gravity"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_gravity:I

    .line 236
    const-string v0, "Gallery_spacing"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_spacing:I

    .line 237
    const-string v0, "Gallery_unselectedAlpha"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_unselectedAlpha:I

    .line 238
    const-class v0, [I

    const-string v0, "GridView"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView:[I

    .line 239
    const-string v0, "GridView_horizontalSpacing"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_horizontalSpacing:I

    .line 240
    const-string v0, "GridView_verticalSpacing"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_verticalSpacing:I

    .line 241
    const-string v0, "GridView_stretchMode"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_stretchMode:I

    .line 242
    const-string v0, "GridView_columnWidth"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_columnWidth:I

    .line 243
    const-string v0, "GridView_numColumns"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_numColumns:I

    .line 244
    const-string v0, "GridView_gravity"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_gravity:I

    .line 245
    const-class v0, [I

    const-string v0, "ListView"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView:[I

    .line 246
    const-string v0, "ListView_divider"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_divider:I

    .line 247
    const-string v0, "ListView_dividerHeight"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_dividerHeight:I

    .line 248
    const-string v0, "ListView_entries"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_entries:I

    .line 249
    const-string v0, "ListView_footerDividersEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_footerDividersEnabled:I

    .line 250
    const-string v0, "ListView_headerDividersEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_headerDividersEnabled:I

    .line 251
    const-class v0, [I

    const-string v0, "ScrollView"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView:[I

    .line 252
    const-string v0, "ScrollView_fillViewport"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView_fillViewport:I

    .line 255
    :cond_0
    const-string v0, "TFResourceBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AFTER : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method


# virtual methods
.method getInt(I)I
    .locals 4
    .parameter "orid"

    .prologue
    .line 359
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->checkModule(I)V

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, intVal:I
    packed-switch p1, :pswitch_data_0

    .line 396
    :pswitch_0
    const-string v1, "TFResourceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt() : Unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return v0

    .line 362
    :pswitch_1
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_absListViewStyle:I

    goto :goto_0

    .line 363
    :pswitch_2
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_galleryStyle:I

    goto :goto_0

    .line 364
    :pswitch_3
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_listViewStyle:I

    goto :goto_0

    .line 365
    :pswitch_4
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_scrollViewStyle:I

    goto :goto_0

    .line 366
    :pswitch_5
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_list_selector_background:I

    goto :goto_0

    .line 367
    :pswitch_6
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_list_content:I

    goto :goto_0

    .line 368
    :pswitch_7
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_list_item_1:I

    goto :goto_0

    .line 369
    :pswitch_8
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_dropdown_item:I

    goto :goto_0

    .line 370
    :pswitch_9
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_item:I

    goto :goto_0

    .line 371
    :pswitch_a
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_typing_filter:I

    goto :goto_0

    .line 372
    :pswitch_b
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilter:I

    goto :goto_0

    .line 373
    :pswitch_c
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilterRestore:I

    goto :goto_0

    .line 374
    :pswitch_d
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_drawSelectorOnTop:I

    goto :goto_0

    .line 375
    :pswitch_e
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_listSelector:I

    goto :goto_0

    .line 376
    :pswitch_f
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner_entries:I

    goto :goto_0

    .line 377
    :pswitch_10
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_animationDuration:I

    goto :goto_0

    .line 378
    :pswitch_11
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_gravity:I

    goto :goto_0

    .line 379
    :pswitch_12
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_spacing:I

    goto :goto_0

    .line 380
    :pswitch_13
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_unselectedAlpha:I

    goto :goto_0

    .line 381
    :pswitch_14
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_horizontalSpacing:I

    goto :goto_0

    .line 382
    :pswitch_15
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_verticalSpacing:I

    goto :goto_0

    .line 383
    :pswitch_16
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_stretchMode:I

    goto :goto_0

    .line 384
    :pswitch_17
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_columnWidth:I

    goto :goto_0

    .line 385
    :pswitch_18
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_numColumns:I

    goto :goto_0

    .line 386
    :pswitch_19
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_gravity:I

    goto :goto_0

    .line 387
    :pswitch_1a
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_divider:I

    goto :goto_0

    .line 388
    :pswitch_1b
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_dividerHeight:I

    goto :goto_0

    .line 389
    :pswitch_1c
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_entries:I

    goto :goto_0

    .line 390
    :pswitch_1d
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_footerDividersEnabled:I

    goto :goto_0

    .line 391
    :pswitch_1e
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_headerDividersEnabled:I

    goto :goto_0

    .line 392
    :pswitch_1f
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView_fillViewport:I

    goto :goto_0

    .line 393
    :pswitch_20
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_edge:I

    goto :goto_0

    .line 394
    :pswitch_21
    sget v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_glow:I

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method getIntArr(I)[I
    .locals 4
    .parameter "orid"

    .prologue
    .line 402
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->checkModule(I)V

    .line 404
    packed-switch p1, :pswitch_data_0

    .line 412
    const-string v1, "TFResourceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt() : Unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x0

    new-array v0, v1, [I

    .line 415
    .local v0, intArrVal:[I
    :goto_0
    return-object v0

    .line 405
    .end local v0           #intArrVal:[I
    :pswitch_0
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView:[I

    .restart local v0       #intArrVal:[I
    goto :goto_0

    .line 406
    .end local v0           #intArrVal:[I
    :pswitch_1
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner:[I

    .restart local v0       #intArrVal:[I
    goto :goto_0

    .line 407
    .end local v0           #intArrVal:[I
    :pswitch_2
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery:[I

    .restart local v0       #intArrVal:[I
    goto :goto_0

    .line 408
    .end local v0           #intArrVal:[I
    :pswitch_3
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView:[I

    .restart local v0       #intArrVal:[I
    goto :goto_0

    .line 409
    .end local v0           #intArrVal:[I
    :pswitch_4
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView:[I

    .restart local v0       #intArrVal:[I
    goto :goto_0

    .line 410
    .end local v0           #intArrVal:[I
    :pswitch_5
    sget-object v0, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView:[I

    .restart local v0       #intArrVal:[I
    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "\n gravity = "

    const-string v3, "\n entries = "

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n absListViewStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_absListViewStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n galleryStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_galleryStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n gridViewStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_gridViewStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n listViewStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_listViewStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n scrollViewStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_attr_scrollViewStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n list_selector_background = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_list_selector_background:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n list_content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_list_content:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n simple_list_item_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_list_item_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n simple_spinner_dropdown_item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_dropdown_item:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n simple_spinner_item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_simple_spinner_item:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n typing_filter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_layout_typing_filter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Animation_TypingFilter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Animation_TypingFilterRestore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_style_Animation_TypingFilterRestore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n AbsListView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n drawSelectorOnTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_drawSelectorOnTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n listSelector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsListView_listSelector:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n AbsSpinner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n entries = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_AbsSpinner_entries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Gallery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n animationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_animationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n gravity = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n spacing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_spacing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n unselectedAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_Gallery_unselectedAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n GridView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n horizontalSpacing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_horizontalSpacing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n verticalSpacing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_verticalSpacing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n stretchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_stretchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n columnWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_columnWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n numColumns = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_numColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n gravity = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_GridView_gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n ListView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n divider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_divider:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n dividerHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_dividerHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n entries = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_entries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n footerDividersEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_footerDividersEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n headerDividersEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ListView_headerDividersEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n ScrollView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n fillViewport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_styleable_ScrollView_fillViewport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n overscroll_edge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_edge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n overscroll_glow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nemustech/tiffany/widget/TFResourceBroker;->mRId_com_android_internal_R_drawable_overscroll_glow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
