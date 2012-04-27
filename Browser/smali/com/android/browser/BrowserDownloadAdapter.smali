.class public Lcom/android/browser/BrowserDownloadAdapter;
.super Lcom/android/browser/DateSortedExpandableListAdapter;
.source "BrowserDownloadAdapter.java"


# instance fields
.field private mBDDConfirmingStatus:Z

.field private mColumnFileDesc:I

.field private mColumnFileSize:I

.field private mColumnFilename:I

.field private mColumnNotifyUrl:I

.field private mColumnObjUrl:I

.field private mColumnSecMime:I

.field private mColumnVendorname:I

.field private mColumnVersionID:I

.field private mColumnprimaryMime:I

.field private mCurrentBytesColumnId:I

.field private mDDconfirmingPosition:I

.field private mDateColumnId:I

.field private mDescColumnId:I

.field private mFilenameColumnId:I

.field private mMethodColumnId:I

.field private mMimetypeColumnId:I

.field private mStateColumnId:I

.field private mStatusColumnId:I

.field private mTitleColumnId:I

.field private mTotalBytesColumnId:I

.field private final sTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "index"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 53
    const-string v0, "BrowserDownloadAdapter"

    iput-object v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->sTAG:Ljava/lang/String;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDDconfirmingPosition:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mBDDConfirmingStatus:Z

    .line 78
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mTitleColumnId:I

    .line 79
    const-string v0, "description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDescColumnId:I

    .line 80
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mStatusColumnId:I

    .line 81
    const-string v0, "state"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mStateColumnId:I

    .line 82
    const-string v0, "total_bytes"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mTotalBytesColumnId:I

    .line 83
    const-string v0, "current_bytes"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    .line 85
    const-string v0, "mimetype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mMimetypeColumnId:I

    .line 86
    const-string v0, "lastmod"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDateColumnId:I

    .line 87
    const-string v0, "downloadmethod"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mMethodColumnId:I

    .line 88
    const-string v0, "dd_primaryMimeType"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnprimaryMime:I

    .line 89
    const-string v0, "dd_SecondaryMimeType1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnSecMime:I

    .line 90
    const-string v0, "dd_fileName"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFilename:I

    .line 91
    const-string v0, "dd_vendor"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVendorname:I

    .line 92
    const-string v0, "dd_description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileDesc:I

    .line 93
    const-string v0, "dd_contentSize"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileSize:I

    .line 94
    const-string v0, "dd_objUrl"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnObjUrl:I

    .line 95
    const-string v0, "dd_notifyurl"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnNotifyUrl:I

    .line 96
    const-string v0, "dd_majorVersion"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVersionID:I

    .line 97
    const-string v0, "_data"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mFilenameColumnId:I

    .line 98
    return-void
.end method

.method public static getErrorText(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 296
    sparse-switch p0, :sswitch_data_0

    .line 376
    const v0, 0x7f0900d6

    :goto_0
    return v0

    .line 298
    :sswitch_0
    const v0, 0x7f0900dd

    goto :goto_0

    .line 301
    :sswitch_1
    const v0, 0x7f0900df

    goto :goto_0

    .line 304
    :sswitch_2
    const v0, 0x7f0900e0

    goto :goto_0

    .line 307
    :sswitch_3
    const v0, 0x7f0900dc

    goto :goto_0

    .line 310
    :sswitch_4
    const v0, 0x7f0900de

    goto :goto_0

    .line 314
    :sswitch_5
    const v0, 0x7f09011b

    goto :goto_0

    .line 319
    :sswitch_6
    const v0, 0x7f090121

    goto :goto_0

    .line 323
    :sswitch_7
    const v0, 0x7f09011f

    goto :goto_0

    .line 326
    :sswitch_8
    const v0, 0x7f090117

    goto :goto_0

    .line 329
    :sswitch_9
    const v0, 0x7f09011c

    goto :goto_0

    .line 332
    :sswitch_a
    const v0, 0x7f09011e

    goto :goto_0

    .line 335
    :sswitch_b
    const v0, 0x7f09011d

    goto :goto_0

    .line 338
    :sswitch_c
    const v0, 0x7f090120

    goto :goto_0

    .line 341
    :sswitch_d
    const v0, 0x7f0900af

    goto :goto_0

    .line 344
    :sswitch_e
    const v0, 0x7f09011a

    goto :goto_0

    .line 349
    :sswitch_f
    const v0, 0x7f090119

    goto :goto_0

    .line 353
    :sswitch_10
    const v0, 0x7f090118

    goto :goto_0

    .line 356
    :sswitch_11
    const v0, 0x7f090122

    goto :goto_0

    .line 360
    :sswitch_12
    const v0, 0x7f090126

    goto :goto_0

    .line 364
    :sswitch_13
    const v0, 0x7f090125

    goto :goto_0

    .line 369
    :sswitch_14
    const v0, 0x7f090124

    goto :goto_0

    .line 372
    :sswitch_15
    const v0, 0x7f090123

    goto :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_11
        0x196 -> :sswitch_0
        0x19b -> :sswitch_1
        0x19c -> :sswitch_2
        0x1ea -> :sswitch_3
        0x1ec -> :sswitch_4
        0x1ed -> :sswitch_12
        0x1ee -> :sswitch_13
        0x1ef -> :sswitch_13
        0x1f0 -> :sswitch_14
        0x1f1 -> :sswitch_12
        0x259 -> :sswitch_5
        0x25a -> :sswitch_5
        0x262 -> :sswitch_6
        0x26c -> :sswitch_7
        0x26d -> :sswitch_8
        0x276 -> :sswitch_9
        0x277 -> :sswitch_a
        0x278 -> :sswitch_b
        0x279 -> :sswitch_c
        0x27a -> :sswitch_6
        0x281 -> :sswitch_d
        0x28a -> :sswitch_15
        0x28b -> :sswitch_14
        0x28c -> :sswitch_10
        0x28d -> :sswitch_10
        0x28e -> :sswitch_f
        0x28f -> :sswitch_f
        0x290 -> :sswitch_e
        0x291 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 36
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserDownloadAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 107
    .local v7, context:Landroid/content/Context;
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: getChildView bEGIN"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 110
    :cond_0
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v32

    const v33, 0x7f030009

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 115
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToChildPosition(II)Z

    move-result v32

    if-nez v32, :cond_2

    .line 287
    .end local v7           #context:Landroid/content/Context;
    .end local p1
    :goto_0
    return-object p4

    .line 119
    .restart local v7       #context:Landroid/content/Context;
    .restart local p1
    :cond_2
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 122
    .local v21, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mMimetypeColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, mimeType:Ljava/lang/String;
    const v32, 0x7f0d0020

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 126
    .local v14, iv:Landroid/widget/ImageView;
    if-nez v16, :cond_4

    .line 127
    const/16 v32, 0x4

    move-object v0, v14

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    .end local p1
    :goto_1
    const v32, 0x7f0d0021

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 144
    .local v30, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mTitleColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 145
    .local v27, title:Ljava/lang/String;
    if-nez v27, :cond_3

    .line 146
    const v32, 0x7f0900c3

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 148
    :cond_3
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v32, 0x7f0d0022

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #tv:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 151
    .restart local v30       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mDescColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mTotalBytesColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v28

    .line 155
    .local v28, totalBytes:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mStatusColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v24

    .line 156
    .local v24, status:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mStateColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v23

    .line 157
    .local v23, state:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mMethodColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v6

    .line 159
    .local v6, DownloadMethod:I
    const/16 v32, 0xb6

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 160
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: bindView Downlaod status: CD_STATUS_PENDING_USERCONFIRM"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Primary MimeType : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnprimaryMime:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Secondary MimeType : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnSecMime:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "File Name : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFilename:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Vendor Name : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVendorname:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "File Desc: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileDesc:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Object Url : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnObjUrl:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Notify Url : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnNotifyUrl:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Content Size : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileSize:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Version Number : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVersionID:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    check-cast v7, Lcom/android/browser/BrowserDownloadPage;

    .end local v7           #context:Landroid/content/Context;
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v32

    move-object v0, v7

    move/from16 v1, p2

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/BrowserDownloadPage;->viewDDInfo(IJ)V

    goto/16 :goto_0

    .line 129
    .end local v6           #DownloadMethod:I
    .end local v23           #state:I
    .end local v24           #status:I
    .end local v27           #title:Ljava/lang/String;
    .end local v28           #totalBytes:J
    .end local v30           #tv:Landroid/widget/TextView;
    .restart local v7       #context:Landroid/content/Context;
    .restart local p1
    :cond_4
    new-instance v13, Landroid/content/Intent;

    const-string v32, "android.intent.action.VIEW"

    move-object v0, v13

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v13, intent:Landroid/content/Intent;
    const-string v32, "file"

    const-string v33, ""

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    move-object v0, v13

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 132
    .local v18, pm:Landroid/content/pm/PackageManager;
    const/high16 v32, 0x1

    move-object/from16 v0, v18

    move-object v1, v13

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 134
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_5

    .line 135
    const/16 v32, 0x0

    move-object v0, v15

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 136
    .local v12, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const/16 v32, 0x0

    move-object v0, v14

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 139
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    :cond_5
    const/16 v32, 0x4

    move-object v0, v14

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 181
    .end local v13           #intent:Landroid/content/Intent;
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .end local p1
    .restart local v6       #DownloadMethod:I
    .restart local v23       #state:I
    .restart local v24       #status:I
    .restart local v27       #title:Ljava/lang/String;
    .restart local v28       #totalBytes:J
    .restart local v30       #tv:Landroid/widget/TextView;
    :cond_6
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BrowserDownloadAdapter: Download  State : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Status : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static/range {v23 .. v23}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 184
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: Download Complete/Fail "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const v32, 0x7f0d0026

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 186
    .local v31, v:Landroid/view/View;
    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 188
    const v32, 0x7f0d0025

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 189
    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const v32, 0x7f0d0024

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #tv:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 192
    .restart local v30       #tv:Landroid/widget/TextView;
    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-static/range {v24 .. v24}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 194
    invoke-static/range {v24 .. v24}, Lcom/android/browser/BrowserDownloadAdapter;->getErrorText(I)I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mDateColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v25

    .line 214
    .local v25, time:J
    new-instance v10, Ljava/util/Date;

    move-object v0, v10

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 215
    .local v10, d:Ljava/util/Date;
    const/16 v32, 0x3

    invoke-static/range {v32 .. v32}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v11

    .line 216
    .local v11, df:Ljava/text/DateFormat;
    const v32, 0x7f0d0023

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #tv:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 217
    .restart local v30       #tv:Landroid/widget/TextView;
    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-virtual {v11, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 197
    .end local v10           #d:Ljava/util/Date;
    .end local v11           #df:Ljava/text/DateFormat;
    .end local v25           #time:J
    :cond_7
    const/16 v32, 0x2

    move v0, v6

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    const/16 v32, 0x5

    move v0, v6

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    const/16 v32, 0x3

    move v0, v6

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 199
    :cond_8
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "Download completed : ONLY ROAP"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const v32, 0x7f09012b

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 202
    :cond_9
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-lez v32, :cond_a

    .line 203
    const v32, 0x7f0900d7

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object v0, v7

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v21

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 206
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v4

    .line 207
    .local v4, BytesReceived:J
    const v32, 0x7f0900d7

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v7, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v21

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 221
    .end local v4           #BytesReceived:J
    .end local v31           #v:Landroid/view/View;
    :cond_b
    const v32, 0x7f0d0026

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #tv:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 222
    .restart local v30       #tv:Landroid/widget/TextView;
    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    const v32, 0x7f0d0025

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 225
    .local v19, progress:Landroid/view/View;
    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    const v32, 0x7f0d0023

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 228
    .restart local v31       #v:Landroid/view/View;
    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 230
    const v32, 0x7f0d0024

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 231
    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 233
    const/16 v32, 0xbe

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 234
    const v32, 0x7f0900d9

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: Status  Downloads.Impl.STATUS_PENDING"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    :cond_c
    const/16 v32, 0xbf

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 237
    const v32, 0x7f0900da

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: Status  D Downloads.Impl.STATUS_PENDING_PAUSED"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    :cond_d
    const/16 v32, 0x2

    move v0, v6

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    const/16 v32, 0x5

    move v0, v6

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    const/16 v32, 0x3

    move v0, v6

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 241
    :cond_e
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: bindView Roap Processing"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const v32, 0x7f090127

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 244
    :cond_f
    move-object/from16 v0, v19

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v17, v0

    .line 246
    .local v17, pb:Landroid/widget/ProgressBar;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v22, sb:Ljava/lang/StringBuilder;
    const/16 v32, 0xc0

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_10

    const/16 v32, 0x3

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 248
    :cond_10
    const v32, 0x7f0900d8

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 249
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: download_running "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v8

    .line 265
    .local v8, currentBytes:J
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BrowserDownloadAdapter:  totalBytes "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-lez v32, :cond_15

    .line 267
    const-wide/16 v32, 0x64

    mul-long v32, v32, v8

    div-long v32, v32, v28

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v20, v0

    .line 268
    .local v20, progressAmount:I
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BrowserDownloadAdapter: Current Size  "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BrowserDownloadAdapter: Progess Amount  "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v32, 0x20

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v32, "% ("

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v32, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    move-object v0, v7

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v32, ")"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 278
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 284
    .end local v20           #progressAmount:I
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 250
    .end local v8           #currentBytes:J
    :cond_11
    const/16 v32, 0xbc

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 251
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: bindView Ro Activating"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const v32, 0x7f090129

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 253
    :cond_12
    const/16 v32, 0x4

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 254
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter:   Process Saving"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const v32, 0x7f090128

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 256
    :cond_13
    const/16 v32, 0x7

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 257
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter: Notification in process "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const v32, 0x7f09012a

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 260
    :cond_14
    const v32, 0x7f0900db

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 261
    const-string v32, "BrowserDownloadAdapter"

    const-string v33, "BrowserDownloadAdapter:download_running_paused "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 280
    .restart local v8       #currentBytes:J
    :cond_15
    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/16 v32, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 282
    const-string v32, "BrowserDownloadAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BrowserDownloadAdapter: Current Size  "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
