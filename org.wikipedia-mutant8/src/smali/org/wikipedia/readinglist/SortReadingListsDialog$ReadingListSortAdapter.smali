.class final Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SortReadingListsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/SortReadingListsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadingListSortAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;Lorg/wikipedia/readinglist/SortReadingListsDialog$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;-><init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-static {v0}, Lorg/wikipedia/readinglist/SortReadingListsDialog;->access$100(Lorg/wikipedia/readinglist/SortReadingListsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$SortReadingListsDialog$ReadingListSortAdapter(ILandroid/view/View;)V
    .locals 0

    .line 82
    iget-object p2, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-static {p2}, Lorg/wikipedia/readinglist/SortReadingListsDialog;->access$200(Lorg/wikipedia/readinglist/SortReadingListsDialog;)Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-static {p2}, Lorg/wikipedia/readinglist/SortReadingListsDialog;->access$200(Lorg/wikipedia/readinglist/SortReadingListsDialog;)Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;->onSortOptionClick(I)V

    .line 85
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 62
    check-cast p1, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->onBindViewHolder(Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;I)V
    .locals 1

    .line 79
    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->bindItem(I)V

    .line 81
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/wikipedia/readinglist/-$$Lambda$SortReadingListsDialog$ReadingListSortAdapter$JBmkDubMtW-d1KXs6bP0JXqz2M0;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/readinglist/-$$Lambda$SortReadingListsDialog$ReadingListSortAdapter$JBmkDubMtW-d1KXs6bP0JXqz2M0;-><init>(Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 72
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c011a

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;-><init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;Landroid/view/View;)V

    return-object p2
.end method
