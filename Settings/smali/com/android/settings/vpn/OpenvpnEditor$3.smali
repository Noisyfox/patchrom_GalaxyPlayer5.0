.class Lcom/android/settings/vpn/OpenvpnEditor$3;
.super Ljava/lang/Object;
.source "OpenvpnEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/OpenvpnEditor;->loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/OpenvpnEditor;

.field final synthetic val$profile:Landroid/net/vpn/OpenvpnProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/OpenvpnEditor;Landroid/net/vpn/OpenvpnProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/vpn/OpenvpnEditor$3;->this$0:Lcom/android/settings/vpn/OpenvpnEditor;

    iput-object p2, p0, Lcom/android/settings/vpn/OpenvpnEditor$3;->val$profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .local v1, f:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$3;->val$profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v2, v1}, Landroid/net/vpn/OpenvpnProfile;->setCertName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$3;->this$0:Lcom/android/settings/vpn/OpenvpnEditor;

    iget-object v3, p0, Lcom/android/settings/vpn/OpenvpnEditor$3;->this$0:Lcom/android/settings/vpn/OpenvpnEditor;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor;->mCert:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings/vpn/OpenvpnEditor;->access$200(Lcom/android/settings/vpn/OpenvpnEditor;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0903b0

    iget-object v5, p0, Lcom/android/settings/vpn/OpenvpnEditor$3;->val$profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v5}, Landroid/net/vpn/OpenvpnProfile;->getCertName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/vpn/OpenvpnEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method
