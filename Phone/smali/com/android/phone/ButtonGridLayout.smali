.class public Lcom/android/phone/ButtonGridLayout;
.super Landroid/view/ViewGroup;
.source "ButtonGridLayout.java"


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mButtons:[Landroid/view/View;

.field private mHeight:I

.field private mHeightInc:I

.field private mWidth:I

.field private mWidthInc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/phone/ButtonGridLayout;->mButtons:[Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/phone/ButtonGridLayout;->mButtons:[Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/phone/ButtonGridLayout;->mButtons:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/phone/ButtonGridLayout;->mButtons:[Landroid/view/View;

    .local v0, buttons:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    aget-object v3, v0, v2

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget-object v1, v0, v4

    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    iget v3, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingRight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    iget v3, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    iget v3, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    mul-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/phone/ButtonGridLayout;->mWidth:I

    iget v3, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    mul-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    iget-object v2, p0, Lcom/android/phone/ButtonGridLayout;->mButtons:[Landroid/view/View;

    .local v2, buttons:[Landroid/view/View;
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    .local v6, paddingLeft:I
    iget v1, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    .local v1, buttonWidth:I
    iget v0, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    .local v0, buttonHeight:I
    iget v8, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    .local v8, widthInc:I
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    .local v4, heightInc:I
    const/4 v5, 0x0

    .local v5, i:I
    sub-int v11, p5, p3

    iget v12, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    add-int v10, v11, v12

    .local v10, y:I
    const/4 v7, 0x0

    .local v7, row:I
    :goto_0
    const/4 v11, 0x4

    if-ge v7, v11, :cond_1

    move v9, v6

    .local v9, x:I
    const/4 v3, 0x0

    .local v3, col:I
    :goto_1
    const/4 v11, 0x3

    if-ge v3, v11, :cond_0

    aget-object v11, v2, v5

    add-int v12, v9, v1

    add-int v13, v10, v0

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v9, v8

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v10, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v3           #col:I
    .end local v9           #x:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget v2, p0, Lcom/android/phone/ButtonGridLayout;->mWidth:I

    invoke-static {v2, p1}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v1

    .local v1, width:I
    iget v2, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    invoke-static {v2, p2}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v0

    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/ButtonGridLayout;->setMeasuredDimension(II)V

    return-void
.end method
