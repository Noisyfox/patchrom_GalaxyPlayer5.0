.class Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BookmarkReorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

.field title:Landroid/widget/TextView;

.field url:Landroid/widget/TextView;

.field v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "v"

    .prologue
    .line 297
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iput-object p1, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->this$1:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    .line 299
    return-void
.end method


# virtual methods
.method getIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 302
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 309
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method getUrl()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 316
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->url:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->url:Landroid/widget/TextView;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->url:Landroid/widget/TextView;

    return-object v0
.end method
