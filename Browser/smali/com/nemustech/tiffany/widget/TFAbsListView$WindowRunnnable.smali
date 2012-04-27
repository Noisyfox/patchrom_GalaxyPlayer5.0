.class Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "TFAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1886
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 1891
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
