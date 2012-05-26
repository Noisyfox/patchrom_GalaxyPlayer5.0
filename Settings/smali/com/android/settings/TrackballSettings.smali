.class public Lcom/android/settings/TrackballSettings;
.super Landroid/preference/PreferenceActivity;
.source "TrackballSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBreathingLightColor:Landroid/preference/ListPreference;

.field private mBreathingLightFreq:Landroid/preference/ListPreference;

.field private mCallBreathingLightColor:Landroid/preference/ListPreference;

.field private mCallBreathingLightFreq:Landroid/preference/ListPreference;

.field private mMmsBreathingLightColor:Landroid/preference/ListPreference;

.field private mMmsBreathingLightFreq:Landroid/preference/ListPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setColor(Landroid/preference/ListPreference;I)V
    .locals 6
    .parameter "pref"
    .parameter "color"

    .prologue
    const/4 v2, -0x1

    .local v2, i:I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, colorString:Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/String;

    .end local v1           #colorString:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    if-ne p2, v5, :cond_1

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f050045

    const v10, 0x7f050044

    const v9, 0x7f050043

    const v7, 0x7f050042

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f040037

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->addPreferencesFromResource(I)V

    const-string v5, "notification_pulse"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "breathing_light_color"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "breathing_light_freq"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "call_breathing_light_color"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "call_breathing_light_freq"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "mms_breathing_light_color"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "mms_breathing_light_freq"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .local v2, defaultColor:I
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breathing_light_color"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, color:I
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_color"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, callColor:I
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, mmsColor:I
    sget-boolean v5, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v5, :cond_1

    const v5, 0x7f090461

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    const v6, 0x7f090462

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    const v6, 0x7f090463

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f090464

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v1}, Lcom/android/settings/TrackballSettings;->setColor(Landroid/preference/ListPreference;I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/TrackballSettings;->setColor(Landroid/preference/ListPreference;I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v4}, Lcom/android/settings/TrackballSettings;->setColor(Landroid/preference/ListPreference;I)V

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .local v3, defaultFreq:I
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "breathing_light_freq"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_breathing_light_freq"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mms_breathing_light_freq"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_light_pulse"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_2

    move v6, v8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    .end local v3           #defaultFreq:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x7f090461

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    const v6, 0x7f090462

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    const v6, 0x7f090463

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f090464

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .restart local v3       #defaultFreq:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/16 v6, 0x1f4

    const-string v10, "notification"

    const-string v9, "could not persist breathing light frequency settings"

    const-string v8, "could not persist breathing light color settings"

    const-string v7, "TrackballSettings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .local v2, key:Ljava/lang/String;
    const-string v5, "breathing_light_color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .local v4, value:I
    const-string v5, "notification"

    invoke-virtual {p0, v10}, Lcom/android/settings/TrackballSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v4, v6}, Landroid/app/NotificationManager;->pulseNotificationLight(II)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breathing_light_color"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .restart local v3       #nm:Landroid/app/NotificationManager;
    .restart local v4       #value:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light color settings"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    .restart local p2
    :cond_1
    const-string v5, "breathing_light_freq"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4       #value:I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breathing_light_freq"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v0, v5

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #value:I
    .restart local p2
    :cond_2
    const-string v5, "call_breathing_light_color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .restart local v4       #value:I
    const-string v5, "notification"

    invoke-virtual {p0, v10}, Lcom/android/settings/TrackballSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .restart local v3       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v4, v6}, Landroid/app/NotificationManager;->pulseNotificationLight(II)V

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_color"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v5

    move-object v0, v5

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light color settings"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    .restart local p2
    :cond_3
    const-string v5, "call_breathing_light_freq"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4       #value:I
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_freq"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v5

    move-object v0, v5

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #value:I
    .restart local p2
    :cond_4
    const-string v5, "mms_breathing_light_color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .restart local v4       #value:I
    const-string v5, "notification"

    invoke-virtual {p0, v10}, Lcom/android/settings/TrackballSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .restart local v3       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v4, v6}, Landroid/app/NotificationManager;->pulseNotificationLight(II)V

    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v5

    move-object v0, v5

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light color settings"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    .restart local p2
    :cond_5
    const-string v5, "mms_breathing_light_freq"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4       #value:I
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_freq"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v5

    move-object v0, v5

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #value:I
    .restart local p2
    :cond_6
    const-string v5, "notification_pulse"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_light_pulse"

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    :goto_1
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method
