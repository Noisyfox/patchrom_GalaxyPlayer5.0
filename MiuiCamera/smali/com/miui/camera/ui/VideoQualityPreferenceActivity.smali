.class public Lcom/miui/camera/ui/VideoQualityPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "VideoQualityPreferenceActivity.java"


# instance fields
.field private mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

.field private mG:Lcom/miui/camera/VideoGlobal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/miui/camera/VideoGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/VideoGlobal;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    .line 34
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v10, v10, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v10, :cond_0

    .line 36
    :try_start_0
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v10}, Lcom/miui/camera/VideoGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v10}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v11}, Lcom/miui/camera/VideoGlobal;->getLocalPrefFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 48
    .local v3, lv:Landroid/widget/ListView;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 49
    const v10, 0x7f050002

    invoke-virtual {p0, v10}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 56
    .local v7, ps:Landroid/preference/PreferenceScreen;
    const-string v10, "VIDEO_QUALITY_LIST"

    invoke-virtual {p0, v10}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 57
    .local v5, pc:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, qualityArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v10, v8

    if-ge v2, v10, :cond_a

    .line 59
    const/4 v9, 0x1

    .line 60
    .local v9, supported:Z
    const/4 v6, 0x0

    .line 62
    .local v6, profile:Landroid/media/CamcorderProfile;
    :try_start_1
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    iget v10, v10, Lcom/miui/camera/Global;->mCameraId:I

    invoke-static {v2}, Lcom/miui/camera/VideoGlobal;->getVideoQuality(I)I

    move-result v11

    invoke-static {v10, v11}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 66
    if-nez v6, :cond_1

    const/4 v9, 0x0

    .line 69
    :cond_1
    :goto_1
    if-nez v9, :cond_4

    .line 58
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2           #i:I
    .end local v3           #lv:Landroid/widget/ListView;
    .end local v5           #pc:Landroid/preference/PreferenceCategory;
    .end local v6           #profile:Landroid/media/CamcorderProfile;
    .end local v7           #ps:Landroid/preference/PreferenceScreen;
    .end local v8           #qualityArray:[Ljava/lang/String;
    .end local v9           #supported:Z
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 38
    .local v1, e:Lcom/miui/camera/CameraHardwareException;
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v10}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 39
    const-string v10, "com.miui.camera.ui.VideoQualityPreferenceActivity"

    const-string v11, "can not open camera"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v1           #e:Lcom/miui/camera/CameraHardwareException;
    :cond_2
    :goto_3
    return-void

    .line 63
    .restart local v2       #i:I
    .restart local v3       #lv:Landroid/widget/ListView;
    .restart local v5       #pc:Landroid/preference/PreferenceCategory;
    .restart local v6       #profile:Landroid/media/CamcorderProfile;
    .restart local v7       #ps:Landroid/preference/PreferenceScreen;
    .restart local v8       #qualityArray:[Ljava/lang/String;
    .restart local v9       #supported:Z
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 64
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v9, 0x0

    .line 66
    if-nez v6, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    if-nez v6, :cond_3

    const/4 v9, 0x0

    :cond_3
    throw v10

    .line 71
    :cond_4
    new-instance v4, Lcom/miui/camera/ui/VideoQualityItemPreference;

    invoke-direct {v4, p0}, Lcom/miui/camera/ui/VideoQualityItemPreference;-><init>(Landroid/content/Context;)V

    .line 72
    .local v4, p:Lcom/miui/camera/ui/VideoQualityItemPreference;
    invoke-virtual {v4, v2}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setQualityValue(I)V

    .line 73
    if-nez v2, :cond_8

    .line 74
    iget v10, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v11, 0x2d0

    if-ne v10, v11, :cond_5

    .line 75
    const v10, 0x7f0b0083

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, " (720P)"

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    :goto_4
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    iget v10, v10, Lcom/miui/camera/VideoGlobal;->mVideoquality:I

    if-ne v2, v10, :cond_9

    .line 85
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setChecked(Z)V

    .line 86
    iput-object v4, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    .line 91
    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 76
    :cond_5
    iget v10, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v11, 0x438

    if-eq v10, v11, :cond_6

    iget v10, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v11, 0x440

    if-ne v10, v11, :cond_7

    .line 77
    :cond_6
    const v10, 0x7f0b0083

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, " (1080P)"

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 79
    :cond_7
    const v10, 0x7f0b0083

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 82
    :cond_8
    aget-object v10, v8, v2

    invoke-virtual {v4, v10}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 88
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setChecked(Z)V

    goto :goto_5

    .line 95
    .end local v4           #p:Lcom/miui/camera/ui/VideoQualityItemPreference;
    .end local v6           #profile:Landroid/media/CamcorderProfile;
    .end local v9           #supported:Z
    :cond_a
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v10, v10, Lcom/miui/camera/Global;->mSupportContinuousFocusMode:Z

    if-eqz v10, :cond_2

    .line 96
    new-instance v5, Landroid/preference/PreferenceCategory;

    .end local v5           #pc:Landroid/preference/PreferenceCategory;
    invoke-direct {v5, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 97
    .restart local v5       #pc:Landroid/preference/PreferenceCategory;
    const v10, 0x7f0b002f

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 98
    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 101
    iget-object v10, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v10, v10, Lcom/miui/camera/Global;->mSupportContinuousFocusMode:Z

    if-eqz v10, :cond_2

    .line 102
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, cp:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0087

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const-string v10, "pref_key_video_continuous_focus"

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 105
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 140
    sparse-switch p1, :sswitch_data_0

    .line 148
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 144
    :sswitch_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 145
    const/4 v0, 0x1

    goto :goto_0

    .line 140
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

    .line 113
    iget-object v1, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    iput-boolean v3, v1, Lcom/miui/camera/Global;->mPreferencesChanged:Z

    .line 115
    instance-of v1, p2, Lcom/miui/camera/ui/VideoQualityItemPreference;

    if-nez v1, :cond_0

    .line 116
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 135
    .end local p2
    :goto_0
    return v1

    .line 119
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    if-ne v1, p2, :cond_1

    move v1, v3

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setChecked(Z)V

    .line 127
    :cond_2
    check-cast p2, Lcom/miui/camera/ui/VideoQualityItemPreference;

    .end local p2
    iput-object p2, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    .line 128
    iget-object v1, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    invoke-virtual {v1, v3}, Lcom/miui/camera/ui/VideoQualityItemPreference;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_video_quality"

    iget-object v2, p0, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;->mCheckedItem:Lcom/miui/camera/ui/VideoQualityItemPreference;

    invoke-virtual {v2}, Lcom/miui/camera/ui/VideoQualityItemPreference;->getQualityValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v3

    .line 135
    goto :goto_0
.end method
