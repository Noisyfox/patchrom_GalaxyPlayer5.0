.class Lcom/android/browser/AddFolderPage$1;
.super Ljava/lang/Object;
.source "AddFolderPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddFolderPage;
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
    .line 54
    iput-object p1, p0, Lcom/android/browser/AddFolderPage$1;->this$0:Lcom/android/browser/AddFolderPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/AddFolderPage$1;->this$0:Lcom/android/browser/AddFolderPage;

    invoke-virtual {v0}, Lcom/android/browser/AddFolderPage;->save()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/browser/AddFolderPage$1;->this$0:Lcom/android/browser/AddFolderPage;

    invoke-virtual {v0}, Lcom/android/browser/AddFolderPage;->finish()V

    .line 59
    :cond_0
    return-void
.end method
