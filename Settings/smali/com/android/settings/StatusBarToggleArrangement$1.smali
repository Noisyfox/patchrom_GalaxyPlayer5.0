.class Lcom/android/settings/StatusBarToggleArrangement$1;
.super Ljava/lang/Object;
.source "StatusBarToggleArrangement.java"

# interfaces
.implements Landroid/util/ToggleManager$OnToggleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/StatusBarToggleArrangement;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/StatusBarToggleArrangement;


# direct methods
.method constructor <init>(Lcom/android/settings/StatusBarToggleArrangement;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/StatusBarToggleArrangement$1;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement$1;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleArrangement;->access$100(Lcom/android/settings/StatusBarToggleArrangement;)Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    return-void
.end method
