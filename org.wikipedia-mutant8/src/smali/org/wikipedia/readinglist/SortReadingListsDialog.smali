.class public Lorg/wikipedia/readinglist/SortReadingListsDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "SortReadingListsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;,
        Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;,
        Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;
    }
.end annotation


# static fields
.field private static final SORT_OPTION:Ljava/lang/String; = "sortOption"


# instance fields
.field private adapter:Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;

.field private chosenSortOption:I

.field private sortOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog;->sortOptions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/readinglist/SortReadingListsDialog;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog;->sortOptions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/readinglist/SortReadingListsDialog;)Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/wikipedia/readinglist/SortReadingListsDialog;->callback()Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/readinglist/SortReadingListsDialog;)I
    .locals 0

    .line 25
    iget p0, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog;->chosenSortOption:I

    return p0
.end method

.method private callback()Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;
    .locals 1

    .line 112
    const-class v0, Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;

    return-object v0
.end method

.method public static newInstance(I)Lorg/wikipedia/readinglist/SortReadingListsDialog;
    .locals 3

    .line 35
    new-instance v0, Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/SortReadingListsDialog;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sortOption"

    .line 37
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "sortOption"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog;->chosenSortOption:I

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog;->sortOptions:Ljava/util/List;

    .line 47
    new-instance p1, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;-><init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;Lorg/wikipedia/readinglist/SortReadingListsDialog$1;)V

    iput-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog;->adapter:Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0044

    .line 54
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09039f

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    iget-object p3, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog;->adapter:Lorg/wikipedia/readinglist/SortReadingListsDialog$ReadingListSortAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method
