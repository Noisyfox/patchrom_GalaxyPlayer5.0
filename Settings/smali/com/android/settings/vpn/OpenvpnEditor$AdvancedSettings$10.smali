.class Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;
.super Ljava/lang/Object;
.source "OpenvpnEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "0"

    :cond_0
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/vpn/OpenvpnProfile;->setKeySize(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$1000(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$1000(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v3}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
