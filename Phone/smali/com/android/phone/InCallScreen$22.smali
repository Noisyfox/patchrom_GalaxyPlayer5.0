.class Lcom/android/phone/InCallScreen$22;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "showGenericErrorDialog( onDismiss\'"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2902(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    return-void
.end method
