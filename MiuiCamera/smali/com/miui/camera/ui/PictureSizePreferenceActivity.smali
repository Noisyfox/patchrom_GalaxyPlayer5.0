.class public Lcom/miui/camera/ui/PictureSizePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "PictureSizePreferenceActivity.java"


# instance fields
.field private mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

.field private mG:Lcom/miui/camera/CameraGlobal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    return-void
.end method

.method private isAcceptablePictureSize(Landroid/hardware/Camera$Size;)Z
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 127
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v0, v1, :cond_0

    move v0, v3

    .line 137
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mLayoutSettingMap:Ljava/util/HashMap;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1, v2}, Lcom/miui/camera/Global;->getSizeRatioText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v3

    .line 134
    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lcom/miui/camera/CameraGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/CameraGlobal;

    move-result-object v12

    iput-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    .line 38
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v12, v12, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v12, :cond_0

    .line 40
    :try_start_0
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v12}, Lcom/miui/camera/CameraGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v12}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 50
    .local v3, lv:Landroid/widget/ListView;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 51
    const/high16 v12, 0x7f05

    invoke-virtual {p0, v12}, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->addPreferencesFromResource(I)V

    .line 54
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v12, v12, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "pref_key_camera_picture_size_width"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 55
    .local v11, width:I
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v12, v12, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "pref_key_camera_picture_size_height"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, height:I
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v12, v12, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    .line 58
    .local v9, supportedPictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v9, :cond_2

    .line 88
    .end local v1           #height:I
    .end local v3           #lv:Landroid/widget/ListView;
    .end local v9           #supportedPictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v11           #width:I
    :cond_1
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v12

    move-object v0, v12

    .line 42
    .local v0, e:Lcom/miui/camera/CameraHardwareException;
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v12}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 43
    const-string v12, "com.miui.camera.ui.PictureSizePreferenceActivity"

    const-string v13, "can not open camera"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .end local v0           #e:Lcom/miui/camera/CameraHardwareException;
    .restart local v1       #height:I
    .restart local v3       #lv:Landroid/widget/ListView;
    .restart local v9       #supportedPictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v11       #width:I
    :cond_2
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v12, v12, Lcom/miui/camera/CameraGlobal;->mSizeComparator:Lcom/miui/camera/CameraGlobal$SizeComparator;

    invoke-static {v9, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    const-string v12, "PICTURE_SIZE_LIST"

    invoke-virtual {p0, v12}, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 61
    .local v5, pc:Landroid/preference/PreferenceCategory;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 62
    .local v6, size:Landroid/hardware/Camera$Size;
    invoke-direct {p0, v6}, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->isAcceptablePictureSize(Landroid/hardware/Camera$Size;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 64
    new-instance v4, Lcom/miui/camera/ui/PictureSizeItemPreference;

    invoke-direct {v4, p0}, Lcom/miui/camera/ui/PictureSizeItemPreference;-><init>(Landroid/content/Context;)V

    .line 65
    .local v4, p:Lcom/miui/camera/ui/PictureSizeItemPreference;
    invoke-virtual {v4, v6}, Lcom/miui/camera/ui/PictureSizeItemPreference;->setSize(Landroid/hardware/Camera$Size;)V

    .line 67
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget v13, v6, Landroid/hardware/Camera$Size;->width:I

    iget v14, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v12, v13, v14}, Lcom/miui/camera/CameraGlobal;->getReadablePictureSizeText(II)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, title:Ljava/lang/String;
    iget-object v12, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget v13, v6, Landroid/hardware/Camera$Size;->width:I

    iget v14, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v12, v13, v14}, Lcom/miui/camera/CameraGlobal;->isCapableForFullScreen(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 69
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b002a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    :cond_4
    invoke-virtual {v4, v10}, Lcom/miui/camera/ui/PictureSizeItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, summary:Ljava/lang/String;
    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v12, v13}, Lcom/miui/camera/Global;->getSizeRatioText(II)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, sizeRatio:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 78
    :cond_5
    invoke-virtual {v4, v8}, Lcom/miui/camera/ui/PictureSizeItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    if-ne v12, v11, :cond_6

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    if-ne v12, v1, :cond_6

    .line 81
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/miui/camera/ui/PictureSizeItemPreference;->setChecked(Z)V

    .line 82
    iput-object v4, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    .line 86
    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 84
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/miui/camera/ui/PictureSizeItemPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 92
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 96
    :sswitch_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 105
    iget-object v1, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    if-ne v1, p2, :cond_0

    move v1, v3

    .line 122
    .end local p2
    :goto_0
    return v1

    .line 108
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/camera/ui/PictureSizeItemPreference;->setChecked(Z)V

    .line 113
    :cond_1
    check-cast p2, Lcom/miui/camera/ui/PictureSizeItemPreference;

    .end local p2
    iput-object p2, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    .line 114
    iget-object v1, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    invoke-virtual {v1, v3}, Lcom/miui/camera/ui/PictureSizeItemPreference;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_camera_picture_size_width"

    iget-object v2, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    invoke-virtual {v2}, Lcom/miui/camera/ui/PictureSizeItemPreference;->getSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v1, "pref_key_camera_picture_size_height"

    iget-object v2, p0, Lcom/miui/camera/ui/PictureSizePreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/PictureSizeItemPreference;

    invoke-virtual {v2}, Lcom/miui/camera/ui/PictureSizeItemPreference;->getSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v3

    .line 122
    goto :goto_0
.end method
