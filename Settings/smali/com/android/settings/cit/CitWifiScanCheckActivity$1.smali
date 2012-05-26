.class Lcom/android/settings/cit/CitWifiScanCheckActivity$1;
.super Ljava/lang/Object;
.source "CitWifiScanCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitWifiScanCheckActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$1;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$1;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanRetry:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$000(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$1;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitWifiScanCheckActivity;->mApScanResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$100(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09053a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$1;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanner:Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$200(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->scan()V

    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$1;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanRetry:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$000(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
