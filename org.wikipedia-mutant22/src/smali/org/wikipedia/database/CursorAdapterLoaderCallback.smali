.class public abstract Lorg/wikipedia/database/CursorAdapterLoaderCallback;
.super Ljava/lang/Object;
.source "CursorAdapterLoaderCallback.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Landroidx/cursoradapter/widget/CursorAdapter;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/database/CursorAdapterLoaderCallback;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lorg/wikipedia/database/CursorAdapterLoaderCallback;->adapter:Landroidx/cursoradapter/widget/CursorAdapter;

    return-void
.end method


# virtual methods
.method protected context()Landroid/content/Context;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/database/CursorAdapterLoaderCallback;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract synthetic onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 22
    iget-object p1, p0, Lorg/wikipedia/database/CursorAdapterLoaderCallback;->adapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {p1, p2}, Landroidx/cursoradapter/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/database/CursorAdapterLoaderCallback;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object p1, p0, Lorg/wikipedia/database/CursorAdapterLoaderCallback;->adapter:Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method
