.class public Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "ReadingListItemActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$ItemActionsCallback;,
        Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;
    }
.end annotation


# static fields
.field private static final ARG_READING_LIST_HAS_ACTION_MODE:Ljava/lang/String; = "hasActionMode"

.field private static final ARG_READING_LIST_NAME:Ljava/lang/String; = "readingListName"

.field private static final ARG_READING_LIST_PAGE:Ljava/lang/String; = "readingListPage"

.field private static final ARG_READING_LIST_SIZE:Ljava/lang/String; = "readingListSize"


# instance fields
.field private actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

.field private itemActionsCallback:Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$ItemActionsCallback;

.field private readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    .line 38
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$ItemActionsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$ItemActionsCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->itemActionsCallback:Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$ItemActionsCallback;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;)Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-object p0
.end method

.method private callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;
    .locals 1

    .line 127
    const-class v0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;JZ)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;JZ)",
            "Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 44
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readingListName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v2, "readingListSize"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "readingListPage"

    .line 46
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "hasActionMode"

    .line 47
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 55
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0402c0

    invoke-static {p2, p3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 57
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->itemActionsCallback:Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$ItemActionsCallback;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;)V

    .line 58
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "readingListPage"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "readingListSize"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const p1, 0x7f100342

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "readingListName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f100344

    .line 62
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 63
    :goto_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    iget-object p3, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p3}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hasActionMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->setState(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 65
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;)V

    .line 71
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method
