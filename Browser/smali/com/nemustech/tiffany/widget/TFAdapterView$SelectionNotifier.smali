.class Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "TFAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAdapterView;Lcom/nemustech/tiffany/widget/TFAdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 828
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;-><init>(Lcom/nemustech/tiffany/widget/TFAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 830
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p0, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    #calls: Lcom/nemustech/tiffany/widget/TFAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->access$200(Lcom/nemustech/tiffany/widget/TFAdapterView;)V

    goto :goto_0
.end method
