.class Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "WikipediaLanguagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Landroid/view/View;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 353
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
