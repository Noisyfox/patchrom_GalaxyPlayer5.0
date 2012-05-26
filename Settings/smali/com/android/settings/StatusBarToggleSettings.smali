.class public Lcom/android/settings/StatusBarToggleSettings;
.super Landroid/preference/PreferenceActivity;
.source "StatusBarToggleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarStyle:Lcom/android/settings/StatusBarToggleStylePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/StatusBarToggleSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/android/settings/StatusBarToggleSettings;->addPreferencesFromResource(I)V

    const-string v0, "status_bar_toggle_style"

    invoke-virtual {p0, v0}, Lcom/android/settings/StatusBarToggleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/StatusBarToggleStylePreference;

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mStatusBarStyle:Lcom/android/settings/StatusBarToggleStylePreference;

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mStatusBarStyle:Lcom/android/settings/StatusBarToggleStylePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/StatusBarToggleStylePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lcom/android/settings/StatusBarToggleSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/StatusBarToggleSettings$1;-><init>(Lcom/android/settings/StatusBarToggleSettings;)V

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f09041f

    invoke-virtual {p0, v1}, Lcom/android/settings/StatusBarToggleSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v0, "expandable_under_fullscreen"

    invoke-virtual {p0, v0}, Lcom/android/settings/StatusBarToggleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Landroid/app/StatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/StatusBarToggleSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/StatusBarManager;->setExpandableUnderFullscreen(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .end local p2
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, pkgFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.STATUS_BAR_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/StatusBarToggleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/StatusBarToggleSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
