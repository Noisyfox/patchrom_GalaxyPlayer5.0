.class Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$6;
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
    iput-object p1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$6;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .local v1, b:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$6;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/net/vpn/OpenvpnProfile;->setSupplyAddr(Z)V

    return v4

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
