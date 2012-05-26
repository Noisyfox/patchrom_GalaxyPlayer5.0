.class public Lcom/android/settings/LightLevelsActivity;
.super Landroid/app/Activity;
.source "LightLevelsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtnValues:[I

.field private mButtons:Landroid/widget/TextView;

.field private mDefaults:Landroid/widget/Button;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditedId:I

.field private mEditor:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHasChanges:Z

.field private mHasKeyboard:Z

.field private mKbValues:[I

.field private mKeyboard:Landroid/widget/TextView;

.field private mLcdValues:[I

.field private mLevels:[I

.field private mNumLevels:Landroid/widget/Button;

.field private mReload:Landroid/widget/Button;

.field private mSave:Landroid/widget/Button;

.field private mScreen:Landroid/widget/TextView;

.field private mSensor:Landroid/widget/TextView;

.field private mSensorRange:I

.field private mUpdateTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/LightLevelsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/LightLevelsActivity$3;-><init>(Lcom/android/settings/LightLevelsActivity;)V

    iput-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LightLevelsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->dialogOk()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mSensor:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mButtons:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LightLevelsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LightLevelsActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/LightLevelsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createButton(ILjava/lang/String;)Landroid/widget/Button;
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/android/settings/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lcom/android/settings/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createEditor()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const v3, 0x7f0c00b6

    invoke-virtual {p0, v3}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .local v2, table:Landroid/widget/TableLayout;
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-le v3, v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    .local v1, row:Landroid/widget/TableRow;
    const-string v3, "0"

    invoke-direct {p0, v7, v3}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v7

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/16 v3, 0xbb8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/16 v3, 0xfa0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x1388

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    sub-int/2addr v3, v6

    if-ge v0, v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    add-int/lit16 v3, v0, 0x7d0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    add-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    sub-int/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    add-int/lit16 v3, v0, 0xbb8

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    add-int/lit16 v3, v0, 0xfa0

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_2

    add-int/lit16 v3, v0, 0x1388

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0x7d0

    sub-int/2addr v3, v6

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    sub-int/2addr v5, v6

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const v3, 0x7fffffff

    const/16 v4, 0x221e

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0xbb8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0xfa0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0x1388

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v2, v7, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    :cond_5
    return-void
.end method

.method private createRow()Landroid/widget/TableRow;
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .local v0, row:Landroid/widget/TableRow;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setGravity(I)V

    return-object v0
.end method

.method private createTextView(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, tv:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/settings/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    return-object v0
.end method

.method private dialogOk()V
    .locals 10

    .prologue
    const/16 v8, 0x1388

    const/16 v6, 0xfa0

    const/16 v7, 0xbb8

    const/4 v9, 0x1

    const/4 v0, 0x0

    .local v0, changed:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, value:I
    const/16 v2, 0xff

    .local v2, valLimitHi:I
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, -0x539

    if-ne v4, v5, :cond_2

    if-le v3, v9, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_0

    sub-int v4, v3, v9

    new-array v1, v4, [I

    .local v1, tmp:[I
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    new-array v1, v3, [I

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    new-array v1, v3, [I

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    new-array v1, v3, [I

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createEditor()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #tmp:[I
    .end local v2           #valLimitHi:I
    .end local v3           #value:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v9, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    .restart local v2       #valLimitHi:I
    .restart local v3       #value:I
    :cond_2
    :try_start_1
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-ge v4, v7, :cond_3

    if-ltz v3, :cond_0

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    if-gt v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v6, 0x7d0

    sub-int/2addr v5, v6

    aput v3, v4, v5

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x3e8

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sub-int v5, v3, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-lt v4, v7, :cond_4

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-ge v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_screen_dim"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lt v3, v4, :cond_0

    if-gt v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    sub-int/2addr v5, v7

    aput v3, v4, v5

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-lt v4, v6, :cond_5

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-ge v4, v8, :cond_5

    if-ltz v3, :cond_0

    if-gt v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    sub-int/2addr v5, v6

    aput v3, v4, v5

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-lt v4, v8, :cond_0

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x1770

    if-ge v4, v5, :cond_0

    if-ltz v3, :cond_0

    if-gt v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    sub-int/2addr v5, v8

    aput v3, v4, v5

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #valLimitHi:I
    .end local v3           #value:I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private dp2px(I)I
    .locals 1
    .parameter "dp"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private intArrayToString([I)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v3

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadData(Z)V
    .locals 5
    .parameter "defaults"

    .prologue
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "light_sensor_levels"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    const-string v3, "light_sensor_lcd_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    const-string v3, "light_sensor_button_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    const-string v3, "light_sensor_keyboard_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v0, v3

    .local v0, N:I
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "sanity check failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #N:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, e:Ljava/lang/Exception;
    const/4 p1, 0x1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createEditor()V

    return-void
.end method

.method private parseIntArray(Ljava/lang/String;)[I
    .locals 4
    .parameter "intArray"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    new-array v1, v3, [I

    .local v1, result:[I
    :cond_1
    return-object v1

    .end local v1           #result:[I
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, split:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .restart local v1       #result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private save()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "lights_changed"

    const/4 v0, 0x1

    .local v0, doSave:Z
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    const/4 v6, 0x1

    sub-int v6, v1, v6

    aget v5, v5, v6

    if-gt v4, v5, :cond_2

    const v4, 0x7f0904cb

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_levels"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_lcd_values"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_button_values"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_keyboard_values"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lights_changed"

    const-wide/16 v5, 0x0

    invoke-static {v4, v9, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .local v2, tag:J
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lights_changed"

    invoke-static {v4, v9, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iput-boolean v8, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .end local v2           #tag:J
    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private updateButtons()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x1388

    const/16 v6, 0xfa0

    const/16 v5, 0xbb8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    if-ne p1, v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->save()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    if-ne p1, v4, :cond_2

    invoke-direct {p0, v9}, Lcom/android/settings/LightLevelsActivity;->loadData(Z)V

    iput-boolean v9, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mReload:Landroid/widget/Button;

    if-ne p1, v4, :cond_3

    invoke-direct {p0, v8}, Lcom/android/settings/LightLevelsActivity;->loadData(Z)V

    iput-boolean v8, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    const/16 v4, -0x539

    iput v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, id:I
    const/4 v3, -0x1

    .local v3, value:I
    const/4 v2, 0x0

    .local v2, min:I
    const/4 v1, 0x0

    .local v1, max:I
    const/16 v4, 0x7d0

    if-lt v0, v4, :cond_5

    if-ge v0, v5, :cond_5

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    const/16 v5, 0x7d0

    sub-int v5, v0, v5

    aget v3, v4, v5

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    :goto_1
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    iput v0, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    if-lt v0, v5, :cond_6

    if-ge v0, v6, :cond_6

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    sub-int v5, v0, v5

    aget v3, v4, v5

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_screen_dim"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v1, 0xff

    goto :goto_1

    :cond_6
    if-lt v0, v6, :cond_7

    if-ge v0, v7, :cond_7

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    sub-int v5, v0, v6

    aget v3, v4, v5

    const/4 v2, 0x0

    const/16 v1, 0xff

    goto :goto_1

    :cond_7
    if-lt v0, v7, :cond_8

    const/16 v4, 0x1770

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    sub-int v5, v0, v7

    aget v3, v4, v5

    const/4 v2, 0x0

    const/16 v1, 0xff

    goto :goto_1

    :cond_8
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->setContentView(I)V

    const v1, 0x7f0904bd

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->setTitle(I)V

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c00b5

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c00b4

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c00b3

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mReload:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mReload:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c00a7

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mSensor:Landroid/widget/TextView;

    const v1, 0x7f0c00aa

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;

    const v1, 0x7f0c00ad

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mButtons:Landroid/widget/TextView;

    const v1, 0x7f0c00b0

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;

    const v1, 0x7f0c00be

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v3, :cond_0

    const v1, 0x7f0c00a4

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    const v2, 0x7f0c00ae

    invoke-virtual {p0, v2}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    const v1, 0x7f0c00b7

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v2, 0x7f0c00bc

    invoke-virtual {p0, v2}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->removeView(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    :goto_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/LightLevelsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LightLevelsActivity$2;-><init>(Lcom/android/settings/LightLevelsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/LightLevelsActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/LightLevelsActivity$1;-><init>(Lcom/android/settings/LightLevelsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0, v4}, Lcom/android/settings/LightLevelsActivity;->loadData(Z)V

    iput-boolean v4, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V

    return-void

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
