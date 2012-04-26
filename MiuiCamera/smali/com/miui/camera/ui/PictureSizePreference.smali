.class public Lcom/miui/camera/ui/PictureSizePreference;
.super Landroid/preference/Preference;
.source "PictureSizePreference.java"


# instance fields
.field private mG:Lcom/miui/camera/CameraGlobal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Lcom/miui/camera/CameraGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/ui/PictureSizePreference;->mG:Lcom/miui/camera/CameraGlobal;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1}, Lcom/miui/camera/CameraGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/ui/PictureSizePreference;->mG:Lcom/miui/camera/CameraGlobal;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-static {p1}, Lcom/miui/camera/CameraGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/ui/PictureSizePreference;->mG:Lcom/miui/camera/CameraGlobal;

    .line 20
    return-void
.end method


# virtual methods
.method public notifyDataChanged()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/miui/camera/ui/PictureSizePreference;->notifyChanged()V

    .line 50
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 34
    iget-object v2, p0, Lcom/miui/camera/ui/PictureSizePreference;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_camera_picture_size_width"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 35
    .local v1, width:I
    iget-object v2, p0, Lcom/miui/camera/ui/PictureSizePreference;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_camera_picture_size_height"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, height:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 39
    const v2, 0x7f0d0032

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    return-void
.end method
