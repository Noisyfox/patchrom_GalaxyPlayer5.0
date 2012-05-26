.class Lcom/android/settings/StatusBarToggleArrangement$2;
.super Ljava/lang/Object;
.source "StatusBarToggleArrangement.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    iput-object p1, p0, Lcom/android/settings/StatusBarToggleArrangement$2;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement$2;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleArrangement;->access$200(Lcom/android/settings/StatusBarToggleArrangement;)Landroid/util/ToggleManager;

    move-result-object v0

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Landroid/util/ToggleManager;->performToggle(I)Z

    :cond_0
    return-void
.end method
