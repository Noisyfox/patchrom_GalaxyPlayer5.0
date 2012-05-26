.class public Lcom/android/settings/LanguageSettings;
.super Landroid/preference/PreferenceActivity;
.source "LanguageSettings.java"


# instance fields
.field private mDefaultInputMethodPref:Lcom/android/settings/InputMethodPreference;

.field private mHaveHardKeyboard:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPreferences:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePref:Landroid/preference/Preference;

.field final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mInputMethodPreferences:Ljava/util/HashSet;

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method private onCreateIMM()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodPreferences:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    const-string v9, "input_method_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .local v3, inputCategory:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, category:Landroid/preference/PreferenceGroup;
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    if-nez v9, :cond_1

    move v0, v12

    .local v0, N:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .local v7, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, label:Ljava/lang/CharSequence;
    if-nez v2, :cond_2

    move-object v1, v3

    :goto_2
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v6, Landroid/preference/PreferenceScreen;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodPreferences:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902f0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v8           #settingsLabel:Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v7           #property:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v0, v9

    goto :goto_0

    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v5       #label:Ljava/lang/CharSequence;
    .restart local v7       #property:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    new-instance v1, Landroid/preference/PreferenceCategory;

    .end local v1           #category:Landroid/preference/PreferenceGroup;
    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .restart local v1       #category:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v7           #property:Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04001f

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->addPreferencesFromResource(I)V

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "language_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v1, "current_ime"

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/InputMethodPreference;

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mDefaultInputMethodPref:Lcom/android/settings/InputMethodPreference;

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "hardkeyboard_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->onCreateIMM()V

    const v1, 0x7f040039

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->addPreferencesFromResource(I)V

    return-void

    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto :goto_0

    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LanguageSettings;->mInputMethodPreferences:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v2, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .local v1, locale:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v0           #conf:Landroid/content/res/Configuration;
    .end local v1           #locale:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LanguageSettings;->mDefaultInputMethodPref:Lcom/android/settings/InputMethodPreference;

    invoke-virtual {v2}, Lcom/android/settings/InputMethodPreference;->refresh()V

    return-void
.end method
