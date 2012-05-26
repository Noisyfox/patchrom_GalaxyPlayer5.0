.class public Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "OpenvpnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/OpenvpnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedSettings"
.end annotation


# instance fields
.field private mCipher:Landroid/preference/EditTextPreference;

.field private mCompLzo:Landroid/preference/CheckBoxPreference;

.field private mDevice:Landroid/preference/ListPreference;

.field private mExtra:Landroid/preference/EditTextPreference;

.field private mKeySize:Landroid/preference/EditTextPreference;

.field private mLocalAddr:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProto:Landroid/preference/ListPreference;

.field private mRedirectGateway:Landroid/preference/CheckBoxPreference;

.field private mRemoteAddr:Landroid/preference/EditTextPreference;

.field private mSetAddr:Landroid/preference/CheckBoxPreference;

.field private profile:Landroid/net/vpn/OpenvpnProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "default"

    const-string v2, ""

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "openvpn_profile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/OpenvpnProfile;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->addPreferencesFromResource(I)V

    const-string v0, "set_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    const-string v0, "set_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    const-string v0, "set_device"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    const-string v0, "set_comp_lzo"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCompLzo:Landroid/preference/CheckBoxPreference;

    const-string v0, "set_redirect_gateway"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRedirectGateway:Landroid/preference/CheckBoxPreference;

    const-string v0, "set_addr"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mSetAddr:Landroid/preference/CheckBoxPreference;

    const-string v0, "set_local_addr"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    const-string v0, "set_remote_addr"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    const-string v0, "set_cipher"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    const-string v0, "set_keysize"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    const-string v0, "set_extra"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$1;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getProto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getProto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$2;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$3;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCompLzo:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getUseCompLzo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCompLzo:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$4;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRedirectGateway:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getRedirectGateway()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRedirectGateway:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$5;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mSetAddr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getSupplyAddr()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mSetAddr:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$6;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$7;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$8;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    const-string v1, "default"

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    const-string v1, "default"

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$11;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "openvpn_profile"

    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
