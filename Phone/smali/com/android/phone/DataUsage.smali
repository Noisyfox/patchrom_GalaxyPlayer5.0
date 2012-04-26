.class public Lcom/android/phone/DataUsage;
.super Landroid/preference/PreferenceActivity;
.source "DataUsage.java"


# instance fields
.field private mCurrentUsagePref:Landroid/preference/Preference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mHelpPref:Landroid/preference/Preference;

.field private mHelpUri:Ljava/lang/String;

.field private mThrottleManager:Landroid/net/ThrottleManager;

.field private mThrottleRatePref:Landroid/preference/Preference;

.field private mTimeFramePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "throttle"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ThrottleManager;

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleManager:Landroid/net/ThrottleManager;

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->addPreferencesFromResource(I)V

    const-string v0, "throttle_current_usage"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Landroid/preference/Preference;

    const-string v0, "throttle_time_frame"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mTimeFramePref:Landroid/preference/Preference;

    const-string v0, "throttle_rate"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleRatePref:Landroid/preference/Preference;

    const-string v0, "throttle_help"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0}, Landroid/net/ThrottleManager;->getHelpUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    new-instance v0, Lcom/android/phone/DataUsageListener;

    iget-object v1, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/DataUsage;->mTimeFramePref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/DataUsage;->mThrottleRatePref:Landroid/preference/Preference;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    const v1, 0x7f0d00c3

    invoke-virtual {p0, v1}, Lcom/android/phone/DataUsage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    iget-object v1, p0, Lcom/android/phone/DataUsage;->mHelpPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->resume()V

    return-void
.end method
