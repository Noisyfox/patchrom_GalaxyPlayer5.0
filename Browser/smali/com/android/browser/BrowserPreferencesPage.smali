.class public Lcom/android/browser/BrowserPreferencesPage;
.super Landroid/preference/PreferenceActivity;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    const-string v0, "BrowserPreferencesPage"

    iput-object v0, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private forceRGB565()V
    .locals 5

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 392
    .local v1, window:Landroid/view/Window;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRGB565 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 395
    .local v0, attr:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 396
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 398
    .end local v0           #attr:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 371
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 372
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 375
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 376
    const-string v3, ""

    move-object v3, v5

    .line 385
    :goto_0
    return-object v3

    .line 379
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 380
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    aget-object v3, v2, v1

    goto :goto_0

    .line 379
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method

.method private getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 351
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 353
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 358
    const-string v3, ""

    move-object v3, v5

    .line 367
    :goto_0
    return-object v3

    .line 361
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 362
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    aget-object v3, v2, v1

    goto :goto_0

    .line 361
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method

.method private getVisualTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 331
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 333
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 337
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 338
    const-string v3, ""

    move-object v3, v5

    .line 347
    :goto_0
    return-object v3

    .line 341
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 342
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    aget-object v3, v2, v1

    goto :goto_0

    .line 341
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 347
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "default_text_encoding"

    const-string v6, "download_default_storyage"

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/android/browser/BrowserPreferencesPage;->forceRGB565()V

    .line 63
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 65
    const-string v0, "homepage"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "homepage"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    check-cast v0, Lcom/android/browser/BrowserHomepagePreference;

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentPage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHomepagePreference;->setCurrentPage(Ljava/lang/String;)V

    .line 72
    const-string v0, "reset_default_preferences"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v0, "default_zoom"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "default_zoom"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    const-string v0, "default_text_encoding"

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "default_text_encoding"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "default_download_storage"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 98
    const-string v3, "download_default_storyage"

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    const-string v0, "download_default_storyage"

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 109
    const-string v0, "download_default_storyage"

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    .line 132
    :goto_0
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "download_default_storyage"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    if-ne v4, v4, :cond_2

    if-ne v1, v4, :cond_2

    .line 137
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 152
    :cond_0
    :goto_1
    const-string v0, "privacy_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 159
    :cond_1
    const-string v0, "website_settings"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/WebsiteSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 163
    return-void

    .line 140
    :cond_2
    if-ne v4, v4, :cond_3

    if-nez v1, :cond_3

    .line 142
    const-string v1, "PHONE"

    .line 143
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    :cond_3
    if-nez v4, :cond_0

    if-ne v1, v4, :cond_0

    .line 147
    const-string v1, "MEMORY_CARD"

    .line 148
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move v1, v7

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 202
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 205
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "reset_default_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    .line 210
    .local v6, value:Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->finish()V

    .end local v6           #value:Ljava/lang/Boolean;
    :cond_0
    move v7, v11

    .line 307
    .end local p1
    .end local p2
    :goto_0
    return v7

    .line 213
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "homepage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 214
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 215
    .local v6, value:Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v12, :cond_4

    move v4, v10

    .line 216
    .local v4, needUpdate:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 217
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 219
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    const/4 v4, 0x1

    .line 224
    :cond_3
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    if-eqz v4, :cond_5

    .line 228
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move v7, v11

    .line 233
    goto :goto_0

    .end local v4           #needUpdate:Z
    .restart local p1
    :cond_4
    move v4, v11

    .line 215
    goto :goto_1

    .restart local v4       #needUpdate:Z
    :cond_5
    move v7, v10

    .line 235
    goto :goto_0

    .line 240
    .end local v4           #needUpdate:Z
    .end local v6           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default_zoom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 241
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v7, v10

    .line 242
    goto :goto_0

    .line 243
    .restart local p2
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default_text_encoding"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 245
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v7, v10

    .line 246
    goto/16 :goto_0

    .line 247
    .restart local p2
    :cond_8
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "privacy_clear_history"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_9

    .line 251
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v12, v7}, Lcom/android/browser/BrowserPreferencesPage;->setResult(ILandroid/content/Intent;)V

    move v7, v10

    .line 253
    goto/16 :goto_0

    .line 256
    :cond_9
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "download_default_storyage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, bMoviNandMounted:Z
    const/4 v3, 0x0

    .line 259
    .local v3, bSdCardMounted:Z
    const/4 v5, 0x0

    .line 263
    .local v5, status:Ljava/lang/String;
    const/4 v2, 0x1

    .line 265
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v5

    .line 271
    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 272
    const/4 v3, 0x1

    .line 275
    :cond_a
    invoke-virtual {p1, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 278
    .local v1, StorageName:Ljava/lang/String;
    if-ne v2, v10, :cond_d

    if-ne v3, v10, :cond_d

    .line 279
    invoke-virtual {p1, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    const-string v7, "PHONE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 282
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 283
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange : StorageName is PHONE"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    move v7, v10

    .line 305
    goto/16 :goto_0

    .line 285
    :cond_c
    const-string v7, "MEMORY_CARD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 286
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 287
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange : StorageName is MEMORY_CARD"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 290
    :cond_d
    if-ne v2, v10, :cond_e

    if-nez v3, :cond_e

    .line 291
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange():StorageName is PHONE"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v1, "PHONE"

    .line 294
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto :goto_2

    .line 297
    :cond_e
    if-nez v2, :cond_b

    if-ne v3, v10, :cond_b

    .line 298
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange():StorageName is MEMORY_CARD"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v1, "MEMORY_CARD"

    .line 301
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 302
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 175
    invoke-direct {p0}, Lcom/android/browser/BrowserPreferencesPage;->forceRGB565()V

    .line 178
    const-string v1, "website_settings"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 180
    .local v0, websiteSettings:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 181
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    new-instance v2, Lcom/android/browser/BrowserPreferencesPage$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserPreferencesPage$1;-><init>(Lcom/android/browser/BrowserPreferencesPage;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 188
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    new-instance v2, Lcom/android/browser/BrowserPreferencesPage$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserPreferencesPage$2;-><init>(Lcom/android/browser/BrowserPreferencesPage;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 195
    return-void
.end method
