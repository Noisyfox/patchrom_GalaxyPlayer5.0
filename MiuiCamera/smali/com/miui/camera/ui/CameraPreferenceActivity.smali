.class public Lcom/miui/camera/ui/CameraPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CameraPreferenceActivity.java"


# instance fields
.field private mG:Lcom/miui/camera/CameraGlobal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/camera/ui/CameraPreferenceActivity;)Lcom/miui/camera/CameraGlobal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const v11, 0x7f0b003d

    const v5, 0x7f0b002b

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "auto"

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Lcom/miui/camera/CameraGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    .line 46
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v1}, Lcom/miui/camera/CameraGlobal;->getLocalPrefFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 61
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 76
    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    new-instance v2, Lcom/miui/camera/ui/PictureSizePreference;

    invoke-direct {v2, p0}, Lcom/miui/camera/ui/PictureSizePreference;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v3, "KEY_CAMERA_PICTURE_SIZE"

    invoke-virtual {v2, v3}, Lcom/miui/camera/ui/PictureSizePreference;->setKey(Ljava/lang/String;)V

    .line 82
    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Lcom/miui/camera/ui/PictureSizePreference;->setTitle(I)V

    .line 83
    const v3, 0x7f03000c

    invoke-virtual {v2, v3}, Lcom/miui/camera/ui/PictureSizePreference;->setWidgetLayoutResource(I)V

    .line 84
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/miui/camera/ui/PictureSizePreferenceActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/miui/camera/ui/PictureSizePreference;->setIntent(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 88
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 89
    const-string v3, "pref_key_camera_jpeg_quality"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 90
    const-string v3, "fine"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 92
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 93
    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 94
    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 95
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 98
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 99
    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    const-string v3, "pref_key_camera_record_location"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 106
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mSupportFocusMode:Z

    if-eqz v2, :cond_1

    .line 111
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    const-string v3, "pref_key_camera_auto_focus"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 114
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 119
    :cond_1
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    const-string v3, "pref_key_camera_playback"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 122
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mIsFFC:Z

    if-nez v2, :cond_2

    .line 127
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    const-string v3, "pref_key_camera_reference_line"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 130
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mSupportSceneDetect:Z

    if-eqz v2, :cond_3

    .line 136
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    const-string v3, "pref_key_camera_scene_detect"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 139
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mSupportLensShade:Z

    if-eqz v2, :cond_4

    .line 145
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    const-string v3, "pref_key_camera_lens_shade"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 148
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mSupportSkinToneEnhancement:Z

    if-eqz v2, :cond_5

    .line 154
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    const-string v3, "pref_key_camera_skin_tone_enhancement"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 157
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    :cond_5
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 163
    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_8

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v6, v9

    .line 173
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_7

    .line 174
    aget-object v7, v5, v6

    invoke-static {v7, v0}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 175
    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    aget-object v7, v5, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 51
    const-string v0, "com.miui.camera.ui.CameraPreferenceActivity"

    const-string v1, "can not open camera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_1
    return-void

    .line 179
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_8

    .line 180
    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 181
    const-string v0, "pref_key_camera_scene_mode"

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 182
    const-string v0, "auto"

    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 183
    const v0, 0x7f0b005d

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 184
    const v0, 0x7f0b005d

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 185
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 186
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_b

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v6, v9

    .line 198
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_a

    .line 199
    aget-object v7, v5, v6

    invoke-static {v7, v0}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 200
    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    aget-object v7, v5, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 204
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_b

    .line 205
    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 206
    const-string v0, "pref_key_camera_white_balance"

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 207
    const-string v0, "auto"

    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 208
    const v0, 0x7f0b0048

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 209
    const v0, 0x7f0b0048

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 210
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 211
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_b
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_e

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v6, v9

    .line 223
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_d

    .line 224
    aget-object v7, v5, v6

    invoke-static {v7, v0}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 225
    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    aget-object v7, v5, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 229
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_e

    .line 230
    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 231
    const-string v0, "pref_key_camera_focus_mode"

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 232
    const-string v0, "auto"

    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 234
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 235
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 236
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_11

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v6, v9

    .line 248
    :goto_4
    array-length v7, v5

    if-ge v6, v7, :cond_10

    .line 249
    aget-object v7, v5, v6

    invoke-static {v7, v0}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 250
    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    aget-object v7, v5, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 254
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_11

    .line 255
    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 256
    const-string v0, "pref_key_camera_antibanding"

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 257
    const-string v0, "50hz"

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 258
    const v0, 0x7f0b006f

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 259
    const v0, 0x7f0b006f

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 260
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 261
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 267
    :cond_11
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_14

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v6, v9

    .line 273
    :goto_5
    array-length v7, v5

    if-ge v6, v7, :cond_13

    .line 274
    aget-object v7, v5, v6

    invoke-static {v7, v0}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 275
    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    aget-object v7, v5, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 279
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_14

    .line 280
    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 281
    const-string v0, "pref_key_camera_iso"

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 282
    const-string v0, "auto"

    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 283
    const v0, 0x7f0b0074

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 284
    const v0, 0x7f0b0074

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 285
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 286
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 292
    :cond_14
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    const-string v2, "auto-exposure-values"

    invoke-virtual {v0, v2}, Lcom/miui/camera/CameraGlobal;->getSupportedValues(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 294
    :goto_6
    if-eqz v0, :cond_19

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    sget-boolean v4, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v4, :cond_17

    .line 298
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    :goto_7
    move v6, v9

    .line 304
    :goto_8
    array-length v7, v4

    if-ge v6, v7, :cond_18

    .line 305
    aget-object v7, v4, v6

    invoke-static {v7, v0}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 306
    aget-object v7, v5, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    aget-object v7, v4, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 292
    :cond_16
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v0

    goto :goto_6

    .line 301
    :cond_17
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto :goto_7

    .line 310
    :cond_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_19

    .line 311
    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 312
    const-string v0, "pref_key_camera_auto_exposure"

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 313
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_1c

    const-string v0, "center-weighted"

    :goto_9
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 315
    const v0, 0x7f0b007d

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 316
    const v0, 0x7f0b007d

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 317
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 318
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 324
    :cond_19
    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 327
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u3001"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u3001"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 331
    const-string v3, "KEY_CON_SAT_SHP"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_1b
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 338
    const-string v2, "RESTORE"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 313
    :cond_1c
    const-string v0, "meter-center"

    goto/16 :goto_9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 358
    sparse-switch p1, :sswitch_data_0

    .line 366
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 362
    :sswitch_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 371
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KEY_CON_SAT_SHP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, result:Landroid/content/Intent;
    const-string v2, "com.miui.camera.ShowConSatShp"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 375
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->finish()V

    move v2, v4

    .line 432
    .end local v0           #result:Landroid/content/Intent;
    :goto_0
    return v2

    .line 377
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RESTORE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    new-instance v1, Lcom/miui/camera/ui/CameraPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/camera/ui/CameraPreferenceActivity$1;-><init>(Lcom/miui/camera/ui/CameraPreferenceActivity;)V

    .line 425
    .local v1, runnable:Ljava/lang/Runnable;
    const v2, 0x7f0b0018

    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0019

    invoke-virtual {p0, v3}, Lcom/miui/camera/ui/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v1}, Lcom/miui/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    move v2, v4

    .line 429
    goto :goto_0

    .line 432
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 347
    const-string v0, "KEY_CAMERA_PICTURE_SIZE"

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/CameraPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/camera/ui/PictureSizePreference;

    invoke-virtual {p0}, Lcom/miui/camera/ui/PictureSizePreference;->notifyDataChanged()V

    .line 348
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/ui/CameraPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 353
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 354
    return-void
.end method
