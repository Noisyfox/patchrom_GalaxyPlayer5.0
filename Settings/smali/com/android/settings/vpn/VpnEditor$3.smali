.class Lcom/android/settings/vpn/VpnEditor$3;
.super Ljava/lang/Object;
.source "VpnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnEditor;->showBackConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnEditor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/vpn/VpnEditor$3;->this$0:Lcom/android/settings/vpn/VpnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "w"

    .prologue
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor$3;->this$0:Lcom/android/settings/vpn/VpnEditor;

    #calls: Lcom/android/settings/vpn/VpnEditor;->validateAndSetResult()Z
    invoke-static {v0}, Lcom/android/settings/vpn/VpnEditor;->access$000(Lcom/android/settings/vpn/VpnEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor$3;->this$0:Lcom/android/settings/vpn/VpnEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    :cond_0
    return-void
.end method
