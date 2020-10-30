.class final Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AddToReadingListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/AddToReadingListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/AddToReadingListDialog$1;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    iget-object v0, v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 293
    check-cast p1, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->onBindViewHolder(Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;I)V
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    iget-object v0, v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;->bindItem(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;
    .locals 1

    .line 301
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListItemView;

    iget-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance p2, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 293
    check-cast p1, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->onViewAttachedToWindow(Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 312
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-static {v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->access$600(Lorg/wikipedia/readinglist/AddToReadingListDialog;)Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 293
    check-cast p1, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;)V
    .locals 2

    .line 316
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 317
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
