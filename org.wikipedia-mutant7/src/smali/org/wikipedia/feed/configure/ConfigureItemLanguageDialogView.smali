.class public Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;
.super Landroid/widget/FrameLayout;
.source "ConfigureItemLanguageDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;,
        Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;
    }
.end annotation


# instance fields
.field private disabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private langList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private langListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->init()V

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->disabledList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->langList:Ljava/util/List;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c007c

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f090147

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->langListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public setContentType(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->langList:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->disabledList:Ljava/util/List;

    .line 44
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->langListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$1;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
