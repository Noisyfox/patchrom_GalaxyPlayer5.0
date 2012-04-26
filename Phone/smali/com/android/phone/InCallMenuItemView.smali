.class Lcom/android/phone/InCallMenuItemView;
.super Landroid/widget/TextView;
.source "InCallMenuItemView.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorState:Z

.field private mIndicatorVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuItemView;->setGravity(I)V

    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, textAppearance:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallMenuItemView;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallMenuItemView;->setFocusable(Z)V

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/InCallMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v4, v2, v4, v3}, Lcom/android/phone/InCallMenuItemView;->setPadding(IIII)V

    return-void
.end method

.method private setSingleLineMarquee()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallMenuItemView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallMenuItemView;->setSingleLine(Z)V

    return-void
.end method

.method private updateCompoundDrawables()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    const/16 v2, -0xa

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuItemView;->setCompoundDrawablePadding(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    move v1, v4

    .local v1, topPadding:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    move v0, v4

    .local v0, bottomPadding:I
    :goto_1
    invoke-virtual {p0, v3, v1, v3, v0}, Lcom/android/phone/InCallMenuItemView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2, v5, v3}, Lcom/android/phone/InCallMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .end local v0           #bottomPadding:I
    .end local v1           #topPadding:I
    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v1       #topPadding:I
    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private updateIndicator()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorState:Z

    if-eqz v1, :cond_0

    const v1, 0x108000d

    move v0, v1

    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .end local v0           #resId:I
    :goto_1
    return-void

    :cond_0
    const v1, 0x108000e

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    iput-object p1, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->setSingleLineMarquee()V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndicatorState(Z)V
    .locals 0
    .parameter "onoff"

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorState:Z

    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateIndicator()V

    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    return-void
.end method

.method public setIndicatorVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorVisible:Z

    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateIndicator()V

    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
