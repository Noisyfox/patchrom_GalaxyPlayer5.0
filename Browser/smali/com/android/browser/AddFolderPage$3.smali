.class Lcom/android/browser/AddFolderPage$3;
.super Landroid/os/Handler;
.source "AddFolderPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/AddFolderPage;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AddFolderPage;


# direct methods
.method constructor <init>(Lcom/android/browser/AddFolderPage;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/browser/AddFolderPage$3;->this$0:Lcom/android/browser/AddFolderPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 114
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 117
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/AddFolderPage$3;->this$0:Lcom/android/browser/AddFolderPage;

    #calls: Lcom/android/browser/AddFolderPage;->updateFolderDB(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/android/browser/AddFolderPage;->access$000(Lcom/android/browser/AddFolderPage;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/browser/AddFolderPage$3;->this$0:Lcom/android/browser/AddFolderPage;

    const v3, 0x7f09013c

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/browser/AddFolderPage$3;->this$0:Lcom/android/browser/AddFolderPage;

    const v3, 0x7f09013d

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0xc7
        :pswitch_0
    .end packed-switch
.end method
