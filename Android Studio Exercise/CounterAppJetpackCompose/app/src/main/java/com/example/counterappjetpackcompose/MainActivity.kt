package com.example.counterappjetpackcompose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            CounterApp()
        }
    }
}

@Composable
fun CounterApp() {
    var count by remember { mutableStateOf(0) }

    Surface(
        modifier = Modifier.fillMaxSize(),
        color = MaterialTheme.colors.background
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(16.dp),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            // Text to display the count value
            Text(text = "Count: $count", style = MaterialTheme.typography.h4)

            Spacer(modifier = Modifier.height(16.dp))

            // Row to hold the buttons
            Row(
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Button to increment the count
                Button(onClick = { count++ }) {
                    Text(text = "Increment")
                }

                // Button to decrement the count
                Button(onClick = { count-- }) {
                    Text(text = "Decrement")
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Button to reset the count
            Button(onClick = { count = 0 }) {
                Text(text = "Reset")
            }
        }
    }
}