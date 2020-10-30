.class Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$HeaderViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "WikipediaLanguagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
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

    .line 334
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$HeaderViewHolder;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 335
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090387

    .line 336
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f100482

    .line 337
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
