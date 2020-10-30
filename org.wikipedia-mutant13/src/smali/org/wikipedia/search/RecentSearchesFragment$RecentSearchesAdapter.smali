.class Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "RecentSearchesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/RecentSearchesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentSearchesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/search/RecentSearchesFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/search/RecentSearchesFragment;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 160
    invoke-direct {p0, p2, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 170
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0, p3}, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;->getEntry(Landroid/database/Cursor;)Lorg/wikipedia/search/RecentSearch;

    move-result-object p3

    .line 172
    invoke-virtual {p3}, Lorg/wikipedia/search/RecentSearch;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;->getEntry(Landroid/database/Cursor;)Lorg/wikipedia/search/RecentSearch;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/search/RecentSearch;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getEntry(Landroid/database/Cursor;)Lorg/wikipedia/search/RecentSearch;
    .locals 1

    .line 182
    sget-object v0, Lorg/wikipedia/search/RecentSearch;->DATABASE_TABLE:Lorg/wikipedia/search/RecentSearchDatabaseTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/search/RecentSearchDatabaseTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/search/RecentSearch;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 165
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0089

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
