.class public Lcom/android/settings/CameraKeySettings;
.super Landroid/preference/PreferenceActivity;
.source "CameraKeySettings.java"


# instance fields
.field private mApp:Landroid/preference/Preference;

.field private mNone:Landroid/preference/Preference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShortcut:Landroid/preference/Preference;

.field private mToggle:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .local v4, hasActive:Z
    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "camera_key_preferred_action_type"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, actionType:I
    const/4 v8, 0x0

    .local v8, shortcutLableId:I
    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "camera_key_preferred_action_shortcut_id"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .local v7, shortcutId:I
    packed-switch v7, :pswitch_data_0

    .end local v7           #shortcutId:I
    :cond_0
    :goto_0
    if-eqz v8, :cond_3

    const/4 v4, 0x1

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mShortcut:Landroid/preference/Preference;

    const v12, 0x7f020026

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setImageResource(I)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mShortcut:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mShortcut:Landroid/preference/Preference;

    invoke-virtual {p0, v8}, Lcom/android/settings/CameraKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v10, 0x0

    .local v10, toggleLableId:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_1

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "camera_key_preferred_action_toggle_id"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .local v9, toggleId:I
    invoke-static {v9}, Landroid/util/ToggleManager;->getName(I)I

    move-result v10

    .end local v9           #toggleId:I
    :cond_1
    if-eqz v10, :cond_4

    const/4 v4, 0x1

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mToggle:Landroid/preference/Preference;

    const v12, 0x7f020026

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setImageResource(I)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mToggle:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mToggle:Landroid/preference/Preference;

    invoke-virtual {p0, v10}, Lcom/android/settings/CameraKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v1, 0x0

    .local v1, appLable:Ljava/lang/CharSequence;
    const/4 v11, 0x3

    if-ne v0, v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "camera_key_preferred_action_app_component"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, componentName:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/CameraKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v2, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .local v5, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componentName:Ljava/lang/String;
    .end local v5           #info:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_3
    if-eqz v1, :cond_5

    const/4 v4, 0x1

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mApp:Landroid/preference/Preference;

    const v12, 0x7f020026

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setImageResource(I)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mApp:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mApp:Landroid/preference/Preference;

    invoke-virtual {v11, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mNone:Landroid/preference/Preference;

    if-nez v4, :cond_6

    const v12, 0x7f020026

    :goto_5
    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setImageResource(I)V

    return-void

    .end local v1           #appLable:Ljava/lang/CharSequence;
    .end local v10           #toggleLableId:I
    .restart local v7       #shortcutId:I
    :pswitch_0
    const v8, 0x7f09044b

    goto/16 :goto_0

    :pswitch_1
    const v8, 0x7f09044c

    goto/16 :goto_0

    :pswitch_2
    const v8, 0x7f09044d

    goto/16 :goto_0

    :pswitch_3
    const v8, 0x7f09044e

    goto/16 :goto_0

    :pswitch_4
    const v8, 0x7f09044f

    goto/16 :goto_0

    .end local v7           #shortcutId:I
    :cond_3
    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mShortcut:Landroid/preference/Preference;

    const v12, 0x7f020038

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setImageResource(I)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mShortcut:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    goto/16 :goto_1

    .restart local v10       #toggleLableId:I
    :cond_4
    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mToggle:Landroid/preference/Preference;

    const v12, 0x7f020038

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setImageResource(I)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mToggle:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    goto :goto_2

    .restart local v1       #appLable:Ljava/lang/CharSequence;
    :cond_5
    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mApp:Landroid/preference/Preference;

    const v12, 0x7f020038

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setImageResource(I)V

    iget-object v11, p0, Lcom/android/settings/CameraKeySettings;->mApp:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    goto :goto_4

    :cond_6
    const v12, 0x7f020038

    goto :goto_5

    .restart local v3       #componentName:Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeySettings;->addPreferencesFromResource(I)V

    const-string v0, "camera_key_action_none"

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CameraKeySettings;->mNone:Landroid/preference/Preference;

    const-string v0, "camera_key_action_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CameraKeySettings;->mShortcut:Landroid/preference/Preference;

    const-string v0, "camera_key_action_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CameraKeySettings;->mToggle:Landroid/preference/Preference;

    const-string v0, "camera_key_action_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CameraKeySettings;->mApp:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/CameraKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CameraKeySettings;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    iget-object v0, p0, Lcom/android/settings/CameraKeySettings;->mNone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CameraKeySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "camera_key_preferred_action_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/CameraKeySettings;->updateState()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/CameraKeySettings;->updateState()V

    return-void
.end method
