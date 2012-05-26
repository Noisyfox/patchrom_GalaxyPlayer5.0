.class Lcom/android/settings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    const/16 v1, 0x37

    #calls: Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    iget-object v1, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    #getter for: Lcom/android/settings/MasterClear;->mWipeAllButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/settings/MasterClear;->mWipeAll:Z
    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$002(Lcom/android/settings/MasterClear;Z)Z

    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    #calls: Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$300(Lcom/android/settings/MasterClear;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
