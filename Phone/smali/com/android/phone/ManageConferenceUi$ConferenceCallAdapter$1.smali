.class Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter$1;
.super Ljava/lang/Object;
.source "ManageConferenceUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter$1;->this$1:Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;

    .local v0, callItem:Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;
    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->splitConnection()V

    iget-object v1, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter$1;->this$1:Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;

    iget-object v1, v1, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->this$0:Lcom/android/phone/ManageConferenceUi;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/ManageConferenceUi;->mIsSplit:Z
    invoke-static {v1, v2}, Lcom/android/phone/ManageConferenceUi;->access$202(Lcom/android/phone/ManageConferenceUi;Z)Z

    return-void
.end method
