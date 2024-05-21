package com.example.androidass

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.example.androidass.ui.theme.AndroidAssTheme
import android.widget.Button
import android.widget.TextView

class MainActivity : ComponentActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val countTextView: TextView = findViewById(R.id.countTextView)
        val incrementButton: Button = findViewById(R.id.incrementButton)
        val decrementButton: Button = findViewById(R.id.decrementButton)
        val resetButton: Button = findViewById(R.id.resetButton)

        incrementButton.setOnClickListener {
            count++
            countTextView.text = count.toString()
        }

        decrementButton.setOnClickListener {
            if (count > 0) {
                count--
                countTextView.text = count.toString()
            }
        }

        resetButton.setOnClickListener {
            count = 0
            countTextView.text = count.toString()
        }
    }
}

