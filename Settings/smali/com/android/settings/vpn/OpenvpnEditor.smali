.class Lcom/android/settings/vpn/OpenvpnEditor;
.super Lcom/android/settings/vpn/VpnProfileEditor;
.source "OpenvpnEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private MENU_ID_ADVANCED:I

.field private mCACert:Landroid/preference/ListPreference;

.field private mCert:Landroid/preference/ListPreference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mUserAuth:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/vpn/OpenvpnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/OpenvpnEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/vpn/OpenvpnProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;-><init>(Landroid/net/vpn/VpnProfile;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/OpenvpnEditor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/vpn/OpenvpnEditor;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCACert:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/vpn/OpenvpnEditor;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCert:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private createList(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;
    .locals 2
    .parameter "c"
    .parameter "titleResId"
    .parameter "selection"
    .parameter "keys"
    .parameter "listener"

    .prologue
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setTitle(I)V

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method


# virtual methods
.method protected loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 7
    .parameter "subpanel"

    .prologue
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, c:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v6

    check-cast v6, Landroid/net/vpn/OpenvpnProfile;

    .local v6, profile:Landroid/net/vpn/OpenvpnProfile;
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0903bc

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0903bd

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/net/vpn/OpenvpnProfile;->getUserAuth()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/vpn/OpenvpnEditor$1;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/vpn/OpenvpnEditor$1;-><init>(Lcom/android/settings/vpn/OpenvpnEditor;Landroid/net/vpn/OpenvpnProfile;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const v2, 0x7f0903b2

    invoke-virtual {v6}, Landroid/net/vpn/OpenvpnProfile;->getCAName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "CACERT_"

    invoke-virtual {v0, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/OpenvpnEditor$2;

    invoke-direct {v5, p0, v6}, Lcom/android/settings/vpn/OpenvpnEditor$2;-><init>(Lcom/android/settings/vpn/OpenvpnEditor;Landroid/net/vpn/OpenvpnProfile;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn/OpenvpnEditor;->createList(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCACert:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCACert:Landroid/preference/ListPreference;

    const v2, 0x7f0903b3

    invoke-virtual {v6}, Landroid/net/vpn/OpenvpnProfile;->getCAName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/vpn/OpenvpnEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCACert:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const v2, 0x7f0903af

    invoke-virtual {v6}, Landroid/net/vpn/OpenvpnProfile;->getCertName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "USRCERT_"

    invoke-virtual {v0, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/OpenvpnEditor$3;

    invoke-direct {v5, p0, v6}, Lcom/android/settings/vpn/OpenvpnEditor$3;-><init>(Lcom/android/settings/vpn/OpenvpnEditor;Landroid/net/vpn/OpenvpnProfile;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn/OpenvpnEditor;->createList(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCert:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCert:Landroid/preference/ListPreference;

    const v2, 0x7f0903b0

    invoke-virtual {v6}, Landroid/net/vpn/OpenvpnProfile;->getCertName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/vpn/OpenvpnEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCert:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/OpenvpnProfile;

    .local v1, p:Landroid/net/vpn/OpenvpnProfile;
    const-string v2, "openvpn_profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/OpenvpnProfile;

    .local v0, newP:Landroid/net/vpn/OpenvpnProfile;
    if-nez v0, :cond_1

    sget-object v2, Lcom/android/settings/vpn/OpenvpnEditor;->TAG:Ljava/lang/String;

    const-string v3, "no profile from advanced settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setPort(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getProto()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setProto(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setDevice(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getUseCompLzo()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setUseCompLzo(Z)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getRedirectGateway()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setRedirectGateway(Z)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getSupplyAddr()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setSupplyAddr(Z)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getLocalAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setLocalAddr(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getRemoteAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setRemoteAddr(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setCipher(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setKeySize(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/vpn/OpenvpnProfile;->setExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;I)V
    .locals 3
    .parameter "menu"
    .parameter "last_item"

    .prologue
    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->MENU_ID_ADVANCED:I

    iget v0, p0, Lcom/android/settings/vpn/OpenvpnEditor;->MENU_ID_ADVANCED:I

    const v1, 0x7f090136

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method protected onOptionsItemSelected(Landroid/preference/PreferenceActivity;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/android/settings/vpn/OpenvpnEditor;->MENU_ID_ADVANCED:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "openvpn_profile"

    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validate()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/settings/vpn/VpnProfileEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCert:Landroid/preference/ListPreference;

    const v2, 0x7f0903b1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/OpenvpnEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor;->mCACert:Landroid/preference/ListPreference;

    const v2, 0x7f0903b4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/OpenvpnEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
