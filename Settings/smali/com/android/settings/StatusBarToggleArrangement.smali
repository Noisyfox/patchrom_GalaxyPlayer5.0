.class public Lcom/android/settings/StatusBarToggleArrangement;
.super Landroid/app/Activity;
.source "StatusBarToggleArrangement.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

.field private mFixedDividerPosition:I

.field private mListView:Landroid/widget/SortableListView;

.field private mToggleIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleManager:Landroid/util/ToggleManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/StatusBarToggleArrangement;)Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/StatusBarToggleArrangement;)Landroid/util/ToggleManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/StatusBarToggleArrangement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/StatusBarToggleArrangement;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/StatusBarToggleArrangement;)Landroid/widget/SortableListView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    return-object v0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, toggle:I
    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    move v0, v2

    .local v0, delta:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .end local v0           #delta:I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/util/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    invoke-virtual {v2}, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Landroid/util/ToggleManager;

    invoke-direct {v2, p0}, Landroid/util/ToggleManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    invoke-static {p0}, Landroid/util/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/util/ToggleManager;->getDividerFixedPosition(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I

    new-instance v2, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;-><init>(Lcom/android/settings/StatusBarToggleArrangement;Lcom/android/settings/StatusBarToggleArrangement$1;)V

    iput-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    new-instance v3, Lcom/android/settings/StatusBarToggleArrangement$1;

    invoke-direct {v3, p0}, Lcom/android/settings/StatusBarToggleArrangement$1;-><init>(Lcom/android/settings/StatusBarToggleArrangement;)V

    invoke-virtual {v2, v3}, Landroid/util/ToggleManager;->setOnToggleChangedListener(Landroid/util/ToggleManager$OnToggleChangedListener;)V

    new-instance v2, Landroid/widget/SortableListView;

    invoke-direct {v2, p0}, Landroid/widget/SortableListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SortableListView;->setDividerHeight(I)V

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SortableListView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/StatusBarToggleArrangement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108038a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .local v1, top:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/settings/StatusBarToggleArrangement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080389

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .local v0, bottom:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SortableListView;->setCustomizedFadingEdge(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/StatusBarToggleArrangement;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement;->mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v2, p0}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v3, Lcom/android/settings/StatusBarToggleArrangement$2;

    invoke-direct {v3, p0}, Lcom/android/settings/StatusBarToggleArrangement$2;-><init>(Lcom/android/settings/StatusBarToggleArrangement;)V

    invoke-virtual {v2, v3}, Landroid/widget/SortableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v3, Lcom/android/settings/StatusBarToggleArrangement$3;

    invoke-direct {v3, p0}, Lcom/android/settings/StatusBarToggleArrangement$3;-><init>(Lcom/android/settings/StatusBarToggleArrangement;)V

    invoke-virtual {v2, v3}, Landroid/widget/SortableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const v1, 0x7f09041e

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v0}, Landroid/util/ToggleManager;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    iget-object v1, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/util/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    invoke-virtual {v0}, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v0}, Landroid/util/ToggleManager;->refreshAll()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
