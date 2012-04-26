.class public Lcom/miui/camera/ui/VideoQualityItemPreference;
.super Landroid/preference/Preference;
.source "VideoQualityItemPreference.java"


# instance fields
.field private mChecked:Z

.field private mQualityValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/miui/camera/ui/VideoQualityItemPreference;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/miui/camera/ui/VideoQualityItemPreference;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-direct {p0}, Lcom/miui/camera/ui/VideoQualityItemPreference;->init()V

    .line 18
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setWidgetLayoutResource(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public getQualityValue()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/camera/ui/VideoQualityItemPreference;->mQualityValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 35
    const v1, 0x7f0d0033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 37
    iget-boolean v1, p0, Lcom/miui/camera/ui/VideoQualityItemPreference;->mChecked:Z

    if-eqz v1, :cond_1

    .line 38
    const v1, 0x108013a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 44
    return-void

    .line 40
    :cond_1
    const v1, 0x1080137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/miui/camera/ui/VideoQualityItemPreference;->mChecked:Z

    .line 60
    invoke-virtual {p0}, Lcom/miui/camera/ui/VideoQualityItemPreference;->notifyChanged()V

    .line 61
    return-void
.end method

.method public setQualityValue(I)V
    .locals 0
    .parameter "qualityValue"

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/camera/ui/VideoQualityItemPreference;->mQualityValue:I

    .line 52
    return-void
.end method
