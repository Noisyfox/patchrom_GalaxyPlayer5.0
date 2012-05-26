.class public Lcom/android/settings/BacklightActivity;
.super Landroid/preference/PreferenceActivity;
.source "BacklightActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

.field private mDecreaseHysteresis:Landroid/preference/ListPreference;

.field private mFilterEnabled:Landroid/preference/CheckBoxPreference;

.field private mFilterInterval:Landroid/preference/ListPreference;

.field private mFilterReset:Landroid/preference/ListPreference;

.field private mFilterWindow:Landroid/preference/ListPreference;

.field private mLevelsEnabled:Landroid/preference/CheckBoxPreference;

.field private mScreenDim:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getBoolean(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private getInt(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "light_filter_window"

    const-string v7, "light_filter_reset"

    const-string v4, "light_filter_interval"

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0904aa

    invoke-virtual {p0, v2}, Lcom/android/settings/BacklightActivity;->setTitle(I)V

    const v2, 0x7f040007

    invoke-virtual {p0, v2}, Lcom/android/settings/BacklightActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "light_filter_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    const-string v3, "light_filter"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "light_filter_reset"

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterReset:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterReset:Landroid/preference/ListPreference;

    const-string v3, "light_filter_reset"

    const/4 v3, -0x1

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterReset:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "light_filter_window"

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterWindow:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterWindow:Landroid/preference/ListPreference;

    const-string v3, "light_filter_window"

    const/16 v3, 0x7530

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "light_filter_interval"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterInterval:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterInterval:Landroid/preference/ListPreference;

    const-string v3, "light_filter_interval"

    const/16 v3, 0x3e8

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mFilterInterval:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "light_levels_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    const-string v3, "light_sensor_custom"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "light_levels_dim"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mScreenDim:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mScreenDim:Landroid/preference/ListPreference;

    const-string v3, "light_screen_dim"

    const/4 v4, 0x5

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mScreenDim:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "light_decrease_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    const-string v3, "light_decrease"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "light_decrease_hysteresis"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/BacklightActivity;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    const-string v3, "light_hysteresis"

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/BacklightActivity;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    move v3, v6

    goto/16 :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "lights_changed"

    const/4 v0, 0x0

    .local v0, handled:Z
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_filter"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    :goto_0
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lights_changed"

    const-wide/16 v4, 0x0

    invoke-static {v3, v8, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long v1, v3, v5

    .local v1, tag:J
    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lights_changed"

    invoke-static {v3, v8, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .end local v1           #tag:J
    :cond_1
    return v0

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mFilterWindow:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_filter_window"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mFilterReset:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_filter_reset"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mFilterInterval:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_filter_interval"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mScreenDim:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_screen_dim"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_sensor_custom"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v7

    :goto_2
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v5, v6

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_decrease"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    :goto_3
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_a
    move v5, v6

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/settings/BacklightActivity;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BacklightActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_hysteresis"

    invoke-direct {p0, p2}, Lcom/android/settings/BacklightActivity;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto/16 :goto_1
.end method
