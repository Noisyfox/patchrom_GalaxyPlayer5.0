.class public Lcom/android/settings/ProgramSettings;
.super Landroid/preference/PreferenceActivity;
.source "ProgramSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040026

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgramSettings;->addPreferencesFromResource(I)V

    const-string v3, "application_kept_in_memory_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgramSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .local v2, keptInMemoryPref:Landroid/preference/Preference;
    sget-boolean v3, Landroid/os/Build;->IS_MILESTONE:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "app_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgramSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .local v0, appPreference:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
