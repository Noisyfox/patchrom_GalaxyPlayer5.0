.class Lcom/android/settings/vpn/OpenvpnEditor$1;
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
    iput-object p1, p0, Lcom/android/settings/vpn/OpenvpnEditor$1;->this$0:Lcom/android/settings/vpn/OpenvpnEditor;

    iput-object p2, p0, Lcom/android/settings/vpn/OpenvpnEditor$1;->val$profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$1;->val$profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1, v0}, Landroid/net/vpn/OpenvpnProfile;->setUserAuth(Z)V

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$1;->this$0:Lcom/android/settings/vpn/OpenvpnEditor;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor;->mUserAuth:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/vpn/OpenvpnEditor;->access$000(Lcom/android/settings/vpn/OpenvpnEditor;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v1, 0x1

    return v1
.end method
