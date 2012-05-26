.class Lcom/android/settings/cit/CitLauncherActivity$2;
.super Ljava/lang/Object;
.source "CitLauncherActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitLauncherActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitLauncherActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitLauncherActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitLauncherActivity$2;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

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
    iget-object v0, p0, Lcom/android/settings/cit/CitLauncherActivity$2;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

    iget-object v1, p0, Lcom/android/settings/cit/CitLauncherActivity$2;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

    invoke-virtual {v1}, Lcom/android/settings/cit/CitLauncherActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lcom/android/settings/cit/CitLauncherActivity;->runTest(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/android/settings/cit/CitLauncherActivity;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
