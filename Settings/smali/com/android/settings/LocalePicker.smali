.class public Lcom/android/settings/LocalePicker;
.super Landroid/preference/PreferenceActivity;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePicker$Loc;
    }
.end annotation


# instance fields
.field private mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

.field mLocales:[Lcom/android/settings/LocalePicker$Loc;

.field private mRootScreen:Landroid/preference/PreferenceScreen;

.field mSpecialLocaleCodes:[Ljava/lang/String;

.field mSpecialLocaleNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocalePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;->updateLocale()V

    return-void
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setupLocales()V
    .locals 14

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f05002f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050030

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    .local v8, locales:[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v9, v8

    .local v9, origSize:I
    new-array v10, v9, [Lcom/android/settings/LocalePicker$Loc;

    .local v10, preprocess:[Lcom/android/settings/LocalePicker$Loc;
    const/4 v2, 0x0

    .local v2, finalSize:I
    const/4 v4, 0x0

    .local v4, i:I
    move v3, v2

    .end local v2           #finalSize:I
    .local v3, finalSize:I
    :goto_0
    if-ge v4, v9, :cond_3

    aget-object v11, v8, v4

    .local v11, s:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, len:I
    const/4 v12, 0x5

    if-ne v7, v12, :cond_5

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, language:Ljava/lang/String;
    const/4 v12, 0x3

    const/4 v13, 0x5

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, l:Ljava/util/Locale;
    if-nez v3, :cond_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v12, Lcom/android/settings/LocalePicker$Loc;

    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v12, v10, v3

    .end local v0           #country:Ljava/lang/String;
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    goto :goto_0

    .restart local v0       #country:Ljava/lang/String;
    .restart local v5       #l:Ljava/util/Locale;
    .restart local v6       #language:Ljava/lang/String;
    :cond_0
    const/4 v12, 0x1

    sub-int v12, v3, v12

    aget-object v12, v10, v12

    iget-object v12, v12, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    sub-int v12, v3, v12

    aget-object v12, v10, v12

    const/4 v13, 0x1

    sub-int v13, v3, v13

    aget-object v13, v10, v13

    iget-object v13, v13, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    invoke-direct {p0, v13}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings/LocalePicker$Loc;->label:Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v12, Lcom/android/settings/LocalePicker$Loc;

    invoke-direct {p0, v5}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v12, v10, v3

    goto :goto_1

    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    :cond_1
    const-string v12, "zz_ZZ"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v1, "Pseudo..."

    .local v1, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v12, Lcom/android/settings/LocalePicker$Loc;

    invoke-direct {v12, v1, v5}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v12, v10, v3

    goto :goto_1

    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    :cond_2
    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_2

    .end local v0           #country:Ljava/lang/String;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    .end local v7           #len:I
    .end local v11           #s:Ljava/lang/String;
    :cond_3
    new-array v12, v3, [Lcom/android/settings/LocalePicker$Loc;

    iput-object v12, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    iget-object v12, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    aget-object v13, v10, v4

    aput-object v13, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v12, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void

    .restart local v7       #len:I
    .restart local v11       #s:Ljava/lang/String;
    :cond_5
    move v2, v3

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateLocale()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreferenceCategory;->getCheckedPosition()I

    move-result v2

    .local v2, position:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v3, "com.android.providers.settings"

    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method createPreferenceScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, current:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mRootScreen:Landroid/preference/PreferenceScreen;

    new-instance v3, Landroid/preference/CheckBoxPreferenceCategory;

    invoke-direct {v3, p0, v5}, Landroid/preference/CheckBoxPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mRootScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/LocalePicker;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    new-instance v2, Landroid/preference/RadioButtonPreference;

    invoke-direct {v2, p0, v5}, Landroid/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v2, pref:Landroid/preference/RadioButtonPreference;
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/settings/LocalePicker$Loc;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #pref:Landroid/preference/RadioButtonPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePicker;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method getContentView()I
    .locals 1

    .prologue
    const v0, 0x7f030030

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getContentView()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePicker;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/LocalePicker;->setupLocales()V

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->createPreferenceScreen()V

    const v2, 0x7f0c00c1

    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .local v1, buttonDone:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v2, p0}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0c00c2

    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, buttonCancel:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/LocalePicker$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LocalePicker$2;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
