.class Lcom/android/settings/vpn/VpnProfileEditor;
.super Ljava/lang/Object;
.source "VpnProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
    }
.end annotation


# instance fields
.field private mDomainSuffices:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mProfile:Landroid/net/vpn/VpnProfile;

.field private mServerName:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>(Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "p"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/VpnProfileEditor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/vpn/VpnProfileEditor;)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method private createServerNamePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 7
    .parameter "c"

    .prologue
    const v2, 0x7f0903cf

    const v3, 0x7f0903d0

    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/VpnProfileEditor$3;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/VpnProfileEditor$3;-><init>(Lcom/android/settings/vpn/VpnProfileEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/vpn/VpnProfileEditor;->createEditTextPreference(Landroid/content/Context;IILjava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/EditTextPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mServerName:Landroid/preference/EditTextPreference;

    .local v6, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-object v6
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2
    .parameter "newName"

    .prologue
    if-nez p1, :cond_0

    const-string v0, ""

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnProfile;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    const v1, 0x7f0903ab

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/vpn/VpnProfileEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected createDomainSufficesPreference(Landroid/content/Context;)Landroid/preference/EditTextPreference;
    .locals 7
    .parameter "c"

    .prologue
    const v2, 0x7f0903d2

    const v3, 0x7f0903d3

    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getDomainSuffices()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/VpnProfileEditor$2;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/VpnProfileEditor$2;-><init>(Lcom/android/settings/vpn/VpnProfileEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/vpn/VpnProfileEditor;->createEditTextPreference(Landroid/content/Context;IILjava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/EditTextPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mDomainSuffices:Landroid/preference/EditTextPreference;

    .local v6, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-object v6
.end method

.method protected createEditTextPreference(Landroid/content/Context;IILjava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/EditTextPreference;
    .locals 2
    .parameter "c"
    .parameter "titleId"
    .parameter "prefNameId"
    .parameter "value"
    .parameter "listener"

    .prologue
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .local v0, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/settings/vpn/VpnProfileEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    invoke-virtual {v0, p5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method public getProfile()Landroid/net/vpn/VpnProfile;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method protected loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter "subpanel"

    .prologue
    return-void
.end method

.method public loadPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter "subpanel"

    .prologue
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, c:Landroid/content/Context;
    const-string v1, "vpn_name"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/settings/vpn/VpnProfileEditor$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnProfileEditor$1;-><init>(Lcom/android/settings/vpn/VpnProfileEditor;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnProfileEditor;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnProfileEditor;->createServerNamePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;->loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnProfileEditor;->createDomainSufficesPreference(Landroid/content/Context;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;I)V
    .locals 0
    .parameter "menu"
    .parameter "last_item"

    .prologue
    return-void
.end method

.method protected onOptionsItemSelected(Landroid/preference/PreferenceActivity;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "p"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected setCheckBoxTitle(Landroid/preference/CheckBoxPreference;I)V
    .locals 5
    .parameter "pref"
    .parameter "fieldNameId"

    .prologue
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, c:Landroid/content/Context;
    const v2, 0x7f0903d7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, formatString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setSummary(Landroid/preference/Preference;ILjava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "fieldNameId"
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/vpn/VpnProfileEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;Z)V

    return-void
.end method

.method protected setSummary(Landroid/preference/Preference;ILjava/lang/String;Z)V
    .locals 5
    .parameter "pref"
    .parameter "fieldNameId"
    .parameter "v"
    .parameter "required"

    .prologue
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, c:Landroid/content/Context;
    if-eqz p4, :cond_0

    const v2, 0x7f0903d5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v1, formatString:Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .end local v1           #formatString:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0903d6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .restart local v1       #formatString:Ljava/lang/String;
    :cond_1
    move-object v2, p3

    goto :goto_1
.end method

.method public validate()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    const v2, 0x7f0903ac

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/VpnProfileEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mServerName:Landroid/preference/EditTextPreference;

    const v2, 0x7f0903d1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/VpnProfileEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected validate(Landroid/preference/Preference;I)Ljava/lang/String;
    .locals 7
    .parameter "pref"
    .parameter "fieldNameId"

    .prologue
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, c:Landroid/content/Context;
    instance-of v4, p1, Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .local v3, value:Ljava/lang/String;
    :goto_0
    instance-of v4, p1, Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_1

    const v4, 0x7f090391

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .local v2, formatString:Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    return-object v4

    .end local v2           #formatString:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .restart local v3       #value:Ljava/lang/String;
    :cond_1
    const v4, 0x7f090392

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .restart local v2       #formatString:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
